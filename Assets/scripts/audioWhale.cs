using UnityEngine;
using System.Collections;

public class audioWhale : MonoBehaviour {

	public AudioManager aud;
	Animator anim;
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator> ();
	}
	
	// Update is called once per frame
	void Update () {
		anim.speed = aud.GetBands (new int[]{1,2,3,4,5,6,7,8,9,10,11,12})*20;
	}
}
