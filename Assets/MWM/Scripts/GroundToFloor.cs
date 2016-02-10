using UnityEngine;
using System.Collections;

public class GroundToFloor : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        this.transform.up = Vector3.up;
	}
}
