using UnityEngine;
using System.Collections;

public class interactableMetronome : Interactable {

	float grow = 0;
	public GameObject ring;
	public AudioSource aud;
	public float speed = 1;
	TransformUniversal trans;
	public float maxRotate = 30;
	float rotAmount = 0;
	bool interacted = false;
	float amountSeed = 0;
	float speedSeed = 0;
	float pitch = 0;
	public float speedReduce = .03f;

	// Use this for initialization
	void Start () {
		amountSeed = 1+Random.value * 1.5f;
		speedSeed = 1+Random.value * 1.2f;
		trans = GetComponent<TransformUniversal> ();
		aud.pitch = Random.Range (.5f, 1);
	}

	// Update is called once per frame
	void Update () {
		if (interacting) {
			if (!aud.isPlaying && !interacted) {
				aud.Play ();
				interacted = true;
			}

			rotAmount = maxRotate;
			ring.transform.localScale = new Vector3 (3, 3, 3);

		} else {
			if (rotAmount > 0)
				rotAmount -= speedReduce;
			interacted = false;
			ring.transform.localScale = new Vector3 (1,1,1);

		}
		trans.rotateOscillateUpperBounds = new Vector3 (rotAmount*amountSeed, 0, .5f*rotAmount*amountSeed);
		trans.rotateOscillateLowerBounds = new Vector3 (-1*(rotAmount*amountSeed), 0, -.5f*(rotAmount*amountSeed));
		trans.rotateOscillateSpeed = new Vector3(4*speedSeed,0,speedSeed);
	}

	void reset(){
		interacting = false;
	}
}