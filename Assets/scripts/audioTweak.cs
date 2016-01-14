using UnityEngine;
using System.Collections;

public class audioTweak : MonoBehaviour {
	public float speed = .01f;
	public float start = 1;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(Time.fixedTime>start)
			GetComponent<AudioSource>().pitch += speed;
	}
}
