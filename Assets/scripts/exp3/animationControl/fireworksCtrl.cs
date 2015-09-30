using UnityEngine;
using System.Collections;

public class fireworksCtrl : MonoBehaviour {

	public float amount = 0;

	ParticleSystem[] particles;
	// Use this for initialization
	void Start () {
		particles = new ParticleSystem[transform.childCount];
		for (int i = 0; i < transform.childCount; i++) {
			particles[i] = transform.GetChild(i).GetComponent<ParticleSystem>();
			particles[i].emissionRate = amount;
		}
	}
	
	// Update is called once per frame
	void Update () {
		for (int i = 0; i < particles.Length; i++) {
			particles[i].emissionRate = amount;
		}
	}
}
