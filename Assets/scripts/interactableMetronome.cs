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
	// Use this for initialization
	void Start () {
		trans = GetComponent<TransformUniversal> ();
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
				rotAmount -= .1f;
			interacted = false;
		}
		trans.rotateOscillateUpperBounds = new Vector3 (rotAmount, 0, 0);
		trans.rotateOscillateLowerBounds = new Vector3 (-rotAmount, 0, 0);
	}
}