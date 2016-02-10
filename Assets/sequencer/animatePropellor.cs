using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class animatePropellor : animate {

	List<Vector3> previous;
	int amount = 10;
	// Use this for initialization
	void Start () {
		previous = new List<Vector3> ();
		previous.Add (Vector3.zero);
	}
	
	// Update is called once per frame
	void Update () {
		transform.LookAt (previous[0]);
		previous.Add(transform.position);
		if (previous.Count > amount)
			previous.RemoveAt (0);
	}
}
