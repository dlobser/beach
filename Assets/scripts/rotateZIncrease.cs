using UnityEngine;
using System.Collections;

public class rotateZIncrease : MonoBehaviour {
	
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Rotate (0, 0, transform.position.z * .5f);
	}
}
