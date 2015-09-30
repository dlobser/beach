using UnityEngine;
using System.Collections;

public class playAudio : MonoBehaviour {

	public AudioSource[] audios;
	// Use this for initialization
	void Start () {
		for (int i = 0; i < audios.Length; i++) {
			audios[i].Play ();
		}
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
