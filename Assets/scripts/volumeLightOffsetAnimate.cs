using UnityEngine;
using System.Collections;

public class volumeLightOffsetAnimate : MonoBehaviour {

	public float speed = 1;
	public Vector3 extent = Vector3.one;
	Material mat;
	float count = 0;
	// Use this for initialization
	void Start () {
		mat = GetComponent<Renderer> ().sharedMaterial;
	}
	
	// Update is called once per frame
	void Update () {
		count += speed * Time.deltaTime;
		mat.SetVector ("_Lgt1", new Vector3 (transform.position.x, Mathf.Sin (count) * extent.y, transform.position.z));
	}
}
