using UnityEngine;
using System.Collections;

[RequireComponent (typeof (LineRenderer))]
[RequireComponent (typeof (ParticleSystem))]

public class wireFrameRender : MonoBehaviour {

	LineRenderer LRend;
	ParticleSystem parti;

	public float lineWidth = 1;
	public float speed;
	public float[] colors;
	public float colorRandomize = .05f;
	public float saturation=1;
	public float brightness=1;

	public GameObject[] vertObj;
	public Material lineMat;
	public Texture2D lineTex;
	public Texture2D shadowTex;
	Mesh mesh;
	Hashtable edges;
	Hashtable Verts;
	Hashtable VertNormCheck;
	public float textureTile = 100;

	Texture2D texture;
	public GameObject wireFrame;
	public float normalOffset = .1f;

	public float pointSize = .5f;
	public Color pointColor = Color.white;

	float[] distances;

	private const int h1 = 12178051;
	private const int h2 = 12481319;
	private const int h3 = 15485863;

	int pointCount;

	ParticleSystem.Particle[] cloud;
	bool bPointsUpdated = false;
	Vector3[] particlePos;

	Vector3[] verts;
	int[] faces;

	Matrix4x4 prevMat;
	Vector3 prevScale;

	float prevNormalOffset;
	bool[] onOff;

	public float shadowSpeed = 1;
	public float shadowTile = 1;

//	public GameObject flashLight;

	public void SetPoints(Vector3[] positions)
	{        

		for (int ii = 0; ii < positions.Length; ++ii)
		{
			cloud[ii].position = positions[ii];            
			cloud[ii].color = pointColor;
			cloud[ii].size = pointSize; 
		}
		
		bPointsUpdated = true;
	}

	// Use this for initialization
	void Start () {

		if (colors.Length < 1)
			colors = new float[]{.5f};

		parti = GetComponent<ParticleSystem> ();
		parti.enableEmission = false;
		parti.startSize = 0;
		parti.emissionRate = 0;
		parti.startSpeed = 0;
		parti.startLifetime = 1e7f;

		edges = new Hashtable ();
		Verts = new Hashtable ();
		VertNormCheck = new Hashtable ();

		LRend = GetComponent<LineRenderer> ();
		LRend.SetWidth (lineWidth, lineWidth);
		mesh = wireFrame.GetComponent<MeshFilter> ().mesh;
		LRend.sortingOrder = -10;

		texture = new Texture2D (100, 1, TextureFormat.RGBAFloat,false);
		texture.filterMode = FilterMode.Point;
		lineMat.SetTexture (0, texture);
		lineMat.SetFloat("_Tile",textureTile);
//		print (lineMat.GetTexture(0));
		LRend.sharedMaterial = lineMat;
		if (lineTex == null)
			lineTex = lineMat.GetTexture ("_SpriteTex") as Texture2D;
		if (shadowTex == null)
			shadowTex = lineTex;
		LRend.sharedMaterial.SetTexture ("_SpriteTex", lineTex);
		LRend.sharedMaterial.SetTexture ("_ShadowTex", shadowTex);



//		wireFrame.GetComponent<Renderer> ().sharedMaterial = lineMat;

		verts = mesh.vertices;
//		for (int i = 0; i < verts.Length; i++) {
//			verts[i]+=mesh.normals[i].normalized*normalOffset;
//		}
		faces = mesh.triangles;

		makeEdges ();
		makeLines ();
		SetPoints (particlePos);
		makeTexture ();

	}

	void makeEdges(){
		edges.Clear ();
		int q = 0;
		int qc = 0;
		for(int i = 0 ; i < faces.Length-1 ; i++){
			if(q<faces.Length-1){
//				Vector3 temp =  mesh.vertices[faces[q]];
//				if(Vector3.Distance(flashLight.transform.position,wireFrame.transform.localToWorldMatrix.MultiplyPoint(temp))<flashLight.transform.localScale.x){
					if(!edges.ContainsKey(hasher(verts, faces[q],faces[q+1]))){
						//					if(!edges.ContainsKey((hasher(verts, faces[+1],faces[q]))))
						edges.Add(hasher(verts, faces[q],faces[q+1]), new int[]{faces[q],faces[q+1]});
					}
					
					q++;
					qc++;
					if(q>0&&qc==2){
						if(!edges.ContainsKey(hasher(verts, faces[q],faces[q-2]))){
							//						if(!edges.ContainsKey(faces[(q-2)]+","+faces[q]))
							edges.Add(hasher(verts, faces[q],faces[q-2]), new int[]{faces[q],faces[q-2]});
						}
					}
					
					if(qc>1){
						qc=0;
						q++;
					}
//				}
			}
			
		}
		onOff = new bool[edges.Count];
	}

	public void makeLines(){
		LRend.SetVertexCount (edges.Count * 4);
		pointCount = edges.Count * 4;
		
		int count = -1;
		distances = new float[edges.Count];
		int dCount = -1;
		int pCount = -1;

		int particleCount = -1;
		Verts.Clear ();

		foreach (DictionaryEntry entry in edges) {
			int[] b = entry.Value as int[];
			Vector3 p = verts [b [0]];
			Vector3 s = verts [b [1]];
			if (!Verts.ContainsKey (getHashedCell (p))) {
				Vector3 qp = p;//
//				Matrix4x4 mt = wireFrame.transform.worldToLocalMatrix;//.inverse.transpose;
//				mt = mt.transpose();
				qp+=mesh.normals[b[0]].normalized*normalOffset;
				qp = wireFrame.transform.localToWorldMatrix.MultiplyPoint (qp);
				Verts.Add (getHashedCell (p), new float[]{qp.x,qp.y,qp.z});
				//								GameObject v = Instantiate(vertObj[0]);
				//								v.transform.position = p;
				++particleCount;
				//				particlePos [++pCount] = p;
			}
//			Matrix4x4 mt2 = wireFrame.transform.worldToLocalMatrix;//.inverse.transpose;
//			p+=mt2.MultiplyPoint(mesh.normals[b[0]]).normalized*normalOffset;
//			s+=mt2.MultiplyPoint(mesh.normals[b[01]]).normalized*normalOffset;
//			if(VertNormCheck.Contains(b[0]
			p+=mesh.normals[b[0]].normalized*normalOffset;
			s+=mesh.normals[b[1]].normalized*normalOffset;
			p = wireFrame.transform.localToWorldMatrix.MultiplyPoint (p);
			s = wireFrame.transform.localToWorldMatrix.MultiplyPoint (s);

			distances [++dCount] = Vector3.Distance (p, s);

			LRend.SetPosition (++count, Vector3.LerpUnclamped (p, s, -.01f));
			LRend.SetPosition (++count, p);
			LRend.SetPosition (++count, s);
			LRend.SetPosition (++count, Vector3.LerpUnclamped (p, s, 1.01f));

		}

		particlePos = new Vector3[Verts.Count];
		int pp = -1;

		foreach (DictionaryEntry entry in Verts) {
			float[] p = entry.Value as float[];
			particlePos [++pp] = new Vector3(p[0],p[1],p[2]);
		}

//		print (particlePos.Length);
		parti.Emit (particlePos.Length);
		cloud = new ParticleSystem.Particle[Verts.Count];
		parti.GetParticles (cloud);

//		for (int i = 0; i < mesh.vertices.Length; i++) {
//			Vector3 pos = wireFrame.transform.localToWorldMatrix.MultiplyPoint (mesh.vertices[i]);
//			pos+= mesh.normals[i]*normalOffset;
//			particlePos[i] = pos;
//		}


	}

	float frac(float t){
		return t-Mathf.Floor(t);
	}

	public void makeTexture(){
		
		int detail = edges.Count*4;
		detail -= 1;
		texture.Resize ((int)detail, 1);
		texture.filterMode = FilterMode.Point;
		int b = 0;
		int on = 0;
		int off = 0;

		for (int i = 0; i < detail; i++) {
			float colA = colors[(int)Mathf.Floor(Random.value*colors.Length)];
//			float colB = colors[1];
			float colC = colA+Random.Range(-colorRandomize,colorRandomize);// Mathf.Lerp(colA,colB,(float)i/detail);
			if(b==1){
				texture.SetPixel (i,0,new Color(distances[i/4]*10,(1+Mathf.Sin ((float)i/detail)*Mathf.PI)/2,colC,1));
			}
			else{
				texture.SetPixel (i,0,new Color(distances[i/4]*10,(1+Mathf.Sin ((float)i/detail)*Mathf.PI)/2,colC,0));
			}
			b++;
			if(b>3)
				b=0;
		}
		texture.Apply ();
	}

	public int hasher(Vector3[] verts, int a, int b){
		return getHashedCell(verts[a])+getHashedCell(verts[b]);
	}
	public int getHashedCell(Vector3 pos) {
		int x = Mathf.FloorToInt (pos.x / .1f);
		int y = Mathf.FloorToInt (pos.y / .1f);
		int z = Mathf.FloorToInt (pos.z / .1f);
		return x * h1 + y * h2 + z * h3;
	}
	
	// Update is called once per frame
	void Update () {
		if (bPointsUpdated)
//		{
//			parti.SetParticles(cloud, cloud.Length);
//			bPointsUpdated = false;
//		}
//		if (prevNormalOffset!=normalOffset||!prevMat.Equals (wireFrame.transform.localToWorldMatrix)) {
////			makeEdges();
//			makeLines ();
//			SetPoints (particlePos);
//
//		}
//		if(!wireFrame.transform.localScale.Equals(prevScale))
//			makeTexture();


		prevMat = wireFrame.transform.localToWorldMatrix;
		prevScale = wireFrame.transform.localScale;
		prevNormalOffset = normalOffset;
		LRend.material.SetFloat ("_Tile", textureTile);
		LRend.material.SetFloat ("_Speed", speed);
		LRend.material.SetFloat ("_Saturation", saturation);
		LRend.material.SetFloat ("_Brightness", brightness);
		LRend.material.SetFloat ("_ShadowSpeed", shadowSpeed);
		LRend.material.SetFloat ("_ShadowTile", shadowTile);
//
//		for (int i = 0; i < pointCount; i++) {
//
//		}
	}
}
