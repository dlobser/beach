﻿using UnityEngine;
using System.Collections;

public class spiral : MonoBehaviour {
	public GameObject thing;
	public int amount = 100;
	public float xy = 5;
	public float z = 1;
	public float freq = .5f;
	public float randAmount = .2f;
	public GameObject container;
	// Use this for initialization
	void Start () {
		if (container == null)
			container = new GameObject ();
		for (int i = 0; i < amount; i++) {
			GameObject t = Instantiate(thing,new Vector3(Random.value*randAmount+Mathf.Sin (i*freq)*xy,Random.value*randAmount+Mathf.Cos (i*freq)*xy,i*z),
			            Quaternion.identity) as GameObject;
			t.transform.parent = container.transform;
			t.transform.Rotate(0,0,Random.value*360);
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
