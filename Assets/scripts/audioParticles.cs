using UnityEngine;
using System.Collections;

public class audioParticles : MonoBehaviour {

	public AudioManager aud;
	ParticleSystem part;
	// Use this for initialization
	void Start () {
		part = GetComponent<ParticleSystem> ();

	}
	
	// Update is called once per frame
	void Update () {
		part.emissionRate = aud.GetBands (new int[]{1,2,3,4,5,6,7,8,9,10,11,12,13})*1000;
		part.startSize = aud.GetBands (new int[]{10,11,12,13})*10000;
		part.startSpeed = aud.GetBands (new int[]{1,2,3,4,5,6,7})*1000;
	}
}
