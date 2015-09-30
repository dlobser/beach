using UnityEngine;
using System.Collections;

public class skyFollowsCamera : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.localPosition = Camera.main.transform.position;
	}
}
