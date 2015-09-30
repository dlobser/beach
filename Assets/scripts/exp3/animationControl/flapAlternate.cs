using UnityEngine;
using System.Collections;

public class flapAlternate : MonoBehaviour {

	
	Animator animator;
	
	public float flap1 = 1f;
	public float speed = 1f;
	
	float b = 0;
	float w = 0;
	
	// Use this for initialization
	void Start () {
		animator = gameObject.GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {
		
		b += flap1 * Time.deltaTime;

		animator.SetFloat ("Blend",  (1f+Mathf.Sin(b))*.5f);
		animator.speed = speed;
	}
}
