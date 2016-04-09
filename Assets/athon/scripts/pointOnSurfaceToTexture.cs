using UnityEngine;
using System.Collections;

public class pointOnSurfaceToTexture : MonoBehaviour {

	protected Texture2D tex;
	public GameObject obj;
	protected Mesh mesh;
	public int resolution = 256;
	public Material mat;
	Vector3 min;
	Vector3 max;
	// Use this for initialization
	void Start () {
		mesh = obj.GetComponent<MeshFilter> ().mesh;
		tex = new Texture2D (resolution, resolution, TextureFormat.ARGB32, false);
		tex.filterMode = FilterMode.Point;
		mat.SetTexture ("_MainTex", tex);
		min = Vector3.zero;
		max = Vector3.zero;
		GetPoints ();
	}

	void GetPoints(){

		for (int i = 0; i < resolution; i++) {
			for (int j = 0; j < resolution; j++) {
				int which = (int)Random.Range (0, (mesh.triangles.Length - 4)/3);
				which *= 3;
				Vector3 a = mesh.vertices [mesh.triangles [which]];
				Vector3 b = mesh.vertices [mesh.triangles [which+1]];
				Vector3 c = mesh.vertices [mesh.triangles [which+2]];

				Vector3 d = Vector3.Lerp (a, b, Random.value);
				Vector3 e = Vector3.Lerp (d, c, Random.value);

				if (e.x < min.x)
					min.x = e.x;
				if (e.y < min.y)
					min.y = e.y;
				if (e.z < min.z)
					min.z = e.z;

				if (e.x > max.x)
					max.x = e.x;
				if (e.y > max.y)
					max.y = e.y;
				if (e.z > max.z)
					max.z = e.z;
				
				tex.SetPixel (i, j, new Color (e.x,e.y,e.z, 1.0f));
			}
		}

		for (int i = 0; i < resolution; i++) {
			for (int j = 0; j < resolution; j++) {
				Color col = tex.GetPixel (i, j);
				col.r -= min.x;
				col.g -= min.y;
				col.b -= min.z;
				col.r /= (max.x - min.x);
				col.g /= (max.y - min.y);
				col.b /= (max.z - min.z);
				tex.SetPixel (i, j, col);
			}
		}

		print (min);
		print (max);

		tex.Apply ();

	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
