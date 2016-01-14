using UnityEngine;
using System.Collections;

public class FOV : MonoBehaviour {
	public Camera camLeft;
	public Camera camRight;
	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		camLeft.fieldOfView = 150;
		camRight.fieldOfView = 150;
	}
}
