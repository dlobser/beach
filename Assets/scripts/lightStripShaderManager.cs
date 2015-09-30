using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class lightStripShaderManager : MonoBehaviour {

	List<GameObject[]> stripGroups;
	public string[] stripMaterials;
	public Color[] colors;

	Texture2D stripColors;

	// Use this for initialization
	void Start () {

		if (colors.Length == 0) {

		}

		stripColors = new Texture2D (stripMaterials.Length, 1);

		for (int i = 0; i < stripMaterials.Length; i++) {
			GameObject[] strips = GameObject.FindGameObjectsWithTag(stripMaterials[i]);
			stripGroups.Add(strips);
		}



	}
	
	// Update is called once per frame
	void Update () {
	
	}

	void fixUV(GameObject o){

		Vector2[] newUVs = o.GetComponent<MeshFilter> ().mesh.uv.Clone () as Vector2[];

		for (int i = 0; i < newUVs.Length; i++) {
			newUVs[i].y*=(1f/(float)stripMaterials.Length)+(i*(1f/(float)stripMaterials.Length));
		}

		o.GetComponent<MeshFilter> ().mesh.uv = newUVs;
	}
}
