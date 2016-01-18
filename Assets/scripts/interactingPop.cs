using UnityEngine;
using System.Collections;

public class interactingPop : Interactable {

	float grow = 0;
	public GameObject ring;
	public AudioSource aud;
	public ParticleSystem parti;
	public float speed = 1;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		if (interacting) {
			parti.emissionRate = 100;
			if(!aud.isPlaying)
				aud.Play ();
			ring.transform.localScale = new Vector3 (3, 3, 3);

		} else {
			ring.transform.localScale = Vector3.one;
			parti.emissionRate = 0;
		}
	}
}
