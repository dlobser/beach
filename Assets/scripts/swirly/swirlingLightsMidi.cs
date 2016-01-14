using UnityEngine;
using System.Collections;

public class swirlingLightsMidi : MonoBehaviour {

	public int amount;
	public Material mat;
//	public GameObject point;
	public GameObject[] points;
	public float orbitStrengthLow = .02f;
	public float orbitStrengthHigh = .1f;
	private float counter = 0;
	public float noiseAmountLow = 10;
	public float noiseAmountHigh = 10;
	public float speedLow = 1;
	public float speedHigh = 1;

	public float startWidthHigh = 1;
	public float startWidthLow = 1;
	public float endWidth = 0;
	public float lengthLow = 10;
	public float lengthHigh = 10;
	public float variationSpeed = .01f;

	float[] nob;
	float[] key;

	// Use this for initialization
	void Start () {
		nob = new float[10];
		for (int i = 0; i < nob.Length; i ++) {
			nob[i] = MidiInput.GetKnob(i+57,MidiInput.Filter.Realtime);
		}
		points = new GameObject[amount];
		for (int i = 0; i < amount; i++) {
			points[i] = new GameObject();
			points[i].transform.position = new Vector3(Random.value*20f,Random.value*20,Random.value*20);
			TrailRenderer TR = points[i].AddComponent<TrailRenderer>();
			TR.material = mat;
		
		}
	}
	
	// Update is called once per frame
	void Update () {
//		for (int i = 0; i < nob.Length; i ++) {
//			nob[i] = MidiInput.GetKnob(i+57,MidiInput.Filter.Realtime);
//		}
		float orbitStrength = map (nob[0], -1, 1, orbitStrengthLow, orbitStrengthHigh);
		float speed = map (nob[1], -1, 1, speedLow, speedHigh);
		float noiseAmount = map (nob[2], -1, 1, noiseAmountLow, noiseAmountHigh);
		float startWidth = map (nob[3]*10, -1, 1, startWidthHigh, startWidthLow);
		float length = map (nob[4], -1, 1, lengthLow, lengthHigh);

		counter += variationSpeed;
		for (int i = 0; i < amount; i++) {
			points[i].transform.Rotate(noiseAmount*new Vector3(
				.5f-Mathf.PerlinNoise(points[i].transform.position.y*.1f,counter*i*2),
				.5f-Mathf.PerlinNoise(points[i].transform.position.z*.1f,counter*i),
				.5f-Mathf.PerlinNoise(points[i].transform.position.x*.01f,points[i].transform.position.y*.01f*counter*i)
				));
			Quaternion oldRot = points[i].transform.rotation;
			points[i].transform.LookAt(transform.position);
			Quaternion newRot = points[i].transform.rotation;
			points[i].transform.rotation = Quaternion.Lerp(oldRot,newRot,orbitStrength);
			points[i].transform.Translate(Vector3.forward*speed*Time.deltaTime*60);

			TrailRenderer TR = points[i].GetComponent<TrailRenderer>();
			TR.startWidth = startWidth;
			TR.endWidth = endWidth;
			TR.time = length;
		}

	}
	float map(float s, float a1, float a2, float b1, float b2)
	{
		return b1 + (s-a1)*(b2-b1)/(a2-a1);
	}
}
