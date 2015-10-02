using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class lightStripShaderManager : MonoBehaviour {

	List<GameObject[]> stripGroups;
	public string[] stripMaterials;
	public Color[] colors;
	public float[] speed;
	public float[] dispAmp;
	public float[] dispSpeed;
	public float[] dispFreq;
	public float[] uvRepeat;

	Renderer rend;
	SkinnedMeshRenderer skinRend;

	Texture2D stripColors;
	Texture2D lightSpeed;
	Texture2D DisplaceAmplitude;
	Texture2D DisplaceSpeed;
	Texture2D DisplaceFreq;
	Texture2D repeats;

	// Use this for initialization
	void Start () {

		rend = GetComponent<Renderer> ();
		rend.sharedMaterial.SetFloat ("_Tile", stripMaterials.Length);


		stripGroups = new List<GameObject[]>();

		if (colors.Length == 0) {

		}

		stripColors = new Texture2D (stripMaterials.Length,1);
		stripColors.filterMode = FilterMode.Point;

//		lightSpeed = new Texture2D (stripMaterials.Length,1,TextureFormat.RFloat,false);
//		lightSpeed.filterMode = FilterMode.Point;
//
//		DisplaceAmplitude = new Texture2D (stripMaterials.Length,1,TextureFormat.RFloat,false);
//		DisplaceAmplitude.filterMode = FilterMode.Point;
//
//		DisplaceSpeed = new Texture2D (stripMaterials.Length,1,TextureFormat.RFloat,false);
//		DisplaceSpeed.filterMode = FilterMode.Point;
//
//		DisplaceFreq = new Texture2D (stripMaterials.Length,1,TextureFormat.RFloat,false);
//		DisplaceFreq.filterMode = FilterMode.Point;

		lightSpeed = floatTex (lightSpeed);
		DisplaceAmplitude = floatTex (DisplaceAmplitude);
		DisplaceSpeed = floatTex (DisplaceSpeed);
		DisplaceFreq = floatTex (DisplaceFreq);
		repeats = floatTex (repeats);



		for (int i = 0; i < stripMaterials.Length; i++) {
			GameObject[] strips = GameObject.FindGameObjectsWithTag(stripMaterials[i]);
			stripGroups.Add(strips);

			for(int j = 0 ; j < strips.Length ; j++){
				fixUV (strips[j],i);
			}


		}

		updateAll ();


	}

	Texture2D floatTex(Texture2D tex){
		Texture2D temp = new Texture2D (stripMaterials.Length,1,TextureFormat.RFloat,false);
		temp.filterMode = FilterMode.Point;
		tex = temp;
		return tex;
	}

	Color col(float f){
		return new Color (f, f, f, f);
	}
	
	// Update is called once per frame
	void Update () {

		updateAll ();

//		changeSpeed (0, Mathf.Sin (Time.time));
//		changeColor (1, new Color(Random.value,Random.value,Random.value,1.0f));
	
	}

	public void updateAll(){

		for (int i = 0; i < stripMaterials.Length; i++) {
			stripColors.SetPixel(i,0,colors[i]);
			float s = speed[i];
			lightSpeed.SetPixel(i,0,col (s));
			s = dispAmp[i];
			DisplaceAmplitude.SetPixel(i,0,col (s));
			s=dispSpeed[i];
			DisplaceSpeed.SetPixel(i,0,col (s));
			s=dispFreq[i];
			DisplaceFreq.SetPixel(i,0,col (s));
			s=uvRepeat[i];
			repeats.SetPixel(i,0,col (s));
		}
		
		stripColors.Apply();
		lightSpeed.Apply ();
		DisplaceAmplitude.Apply ();
		DisplaceFreq.Apply ();
		DisplaceSpeed.Apply ();
		repeats.Apply ();

		
		rend.sharedMaterial.SetTexture ("_ColorTex", stripColors);
		rend.sharedMaterial.SetTexture ("_LightSpeedTex", lightSpeed);
		rend.sharedMaterial.SetTexture ("_DispAmp", DisplaceAmplitude);
		rend.sharedMaterial.SetTexture ("_DispFreq", DisplaceFreq);
		rend.sharedMaterial.SetTexture ("_DispSpeed", DisplaceSpeed);
		rend.sharedMaterial.SetTexture ("_Repeat", repeats);


	}

	public void changeSpeed(int index, float newSpeed){

		lightSpeed.SetPixel(index,0,new Color(newSpeed,newSpeed,newSpeed,newSpeed));
		lightSpeed.Apply ();
		rend.sharedMaterial.SetTexture ("_LightSpeedTex", lightSpeed);

	}

	public void changeColor(int index, Color newColor){

		stripColors.SetPixel(index,0,newColor);
		stripColors.Apply();
		rend.sharedMaterial.SetTexture ("_ColorTex", stripColors);

	}

	void fixUV(GameObject o, float off){

		if (o.GetComponent<MeshFilter> () != null) {
			Vector2[] newUVs = o.GetComponent<MeshFilter> ().mesh.uv.Clone () as Vector2[];

			for (int i = 0; i < newUVs.Length; i++) {
				float set = 1f / (float)stripMaterials.Length;
				newUVs [i].x *= .94f;
				newUVs [i].x += .03f;
				newUVs [i].x *= set;
				newUVs [i].x += (off * set);
			}

			o.GetComponent<MeshFilter> ().mesh.uv = newUVs;
		}
	}
}
