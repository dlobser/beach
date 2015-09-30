using UnityEngine;
using System.Collections;

public class babyBasketShake : MonoBehaviour {

	Animator animator;

	public float  bang = 1f;
	public float whirl = 1f;
	public float dance = 1f;
	public float speed = 1f;

	float b = 0;
	float w = 0;
	float d = 0;

	// Use this for initialization
	void Start () {
		animator = gameObject.GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {

		b += bang * Time.deltaTime;
		w += whirl * Time.deltaTime;
		d += dance * Time.deltaTime;

		animator.SetFloat ("bang",  (1f+Mathf.Sin(b))*.5f);
		animator.SetFloat ("whirl", (1f+Mathf.Sin(w))*.5f);
		animator.SetFloat ("dance", (1f+Mathf.Sin(d))*.5f);
		animator.SetFloat ("Blends", 1f);
		animator.speed = speed;
	}
}
