using UnityEngine;
using System.Collections;

public class offsetUVS : MonoBehaviour {

	public Vector2 speed;
//	public Renderer rend;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		GetComponent<MeshRenderer>().sharedMaterial.SetTextureOffset ("_MainTex", speed*Time.time);
	}
}
