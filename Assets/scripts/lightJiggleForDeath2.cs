using UnityEngine;
using System.Collections;

public class lightJiggleForDeath2 : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		float near = Vector3.Distance (transform.position, Camera.main.transform.position);
		print (near);
		transform.localPosition = Camera.main.transform.position;
		transform.Translate (0, 0, 200);
//		if (near < 300) {

			transform.Rotate(0,0,transform.position.z*.01f);
//			float sc = (near-300)*.1f;
//			transform.localScale = new Vector3(sc,sc,sc);
//		}
	}
}
