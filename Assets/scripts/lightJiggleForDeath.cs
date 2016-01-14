using UnityEngine;
using System.Collections;

public class lightJiggleForDeath : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		float near = Vector3.Distance (transform.position, Camera.main.transform.position);
		Transform light = transform.GetChild (0);
//		print (near);
		if (near < 500)
			light.transform.localPosition = new Vector3 (0, 0, (near-500)*( Mathf.Sin ((near-500) * ((near - 500) *.002f) )));
	}
}
