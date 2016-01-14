using UnityEngine;
using System.Collections;
using System.Collections.Generic;

[RequireComponent (typeof (AudioSource))]

public class triggerAudioOnProximity : MonoBehaviour {

	public AudioClip clip;
	GameObject[] gos;
	public float minDistance = .1f;

	AudioSource aud;
	// Use this for initialization
	void Start () {
		aud = GetComponent<AudioSource> ();
		aud.clip = clip;
		gos = GameObject.FindGameObjectsWithTag("source"); 

	}
	
	// Update is called once per frame
	void Update () {
		if (!aud.isPlaying) {
			if(Trig ())
				aud.Play();
		}
		print (aud.isPlaying);
		print (Trig ());
	}


	bool Trig(){
		for (int i = 0; i < gos.Length; i++) {
			print (Vector3.Distance(transform.position,gos[i].transform.position));
			if(Vector3.Distance(transform.position,gos[i].transform.position)<minDistance){

				return true;
			}
		}
		return false;
	}
}
