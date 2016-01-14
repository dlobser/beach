using UnityEngine;
using System.Collections;

public class activator : MonoBehaviour {

	public GameObject[] activators;
	int c = 0 ;
	// Use this for initialization
	void Start () {
		for (int i = 0; i < activators.Length; i++) {
			activators[i].SetActive(false);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if (c < activators.Length) {
			activators [c].SetActive (true);
			c++;
		}
	}
}
