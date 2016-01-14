using UnityEngine;
using System.Collections;

public class randomRotation : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate (new Vector3 (Random.Range (-180, 180), Random.Range (-180, 180), Random.Range (-180, 180)));
	}
}
