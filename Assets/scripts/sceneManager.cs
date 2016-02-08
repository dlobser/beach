﻿using UnityEngine;
using System.Collections;

public class sceneManager : MonoBehaviour {

	public GameObject[] scenes;
	public int firstScene = 7;

	public void sceneSwitch(int sc){
		for (int i = 0; i < scenes.Length; i++) {
			scenes[i].SetActive(false);
		}
		scenes [sc].SetActive (true);
		scenes [sc].BroadcastMessage ("reset");
	}
	// Use this for initialization
	void Start () {
		Cursor.visible = false;
		sceneSwitch (firstScene);
	}
	
	// Update is called once per frame
//	void Update () {
//	
//	}
}
