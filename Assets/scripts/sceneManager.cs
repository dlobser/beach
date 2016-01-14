using UnityEngine;
using System.Collections;

public class sceneManager : MonoBehaviour {

	public GameObject[] scenes;

	public void sceneSwitch(int sc){
		for (int i = 0; i < scenes.Length; i++) {
			scenes[i].SetActive(false);
		}
		scenes [sc].SetActive (true);
	}
	// Use this for initialization
	void Start () {

		sceneSwitch (0);
	}
	
	// Update is called once per frame
//	void Update () {
//	
//	}
}
