using UnityEngine;
using System.Collections;

public class midiSliders : MonoBehaviour {

	wireFrameScratch scratch;
	float[] nob;
	float[] key;
	// Use this for initialization
	void Start () {
		scratch = GetComponent<wireFrameScratch> ();
		nob = new float[20];
		for (int i = 0; i < nob.Length; i ++) {
			nob[i] = i+57;
		}
		key = new float[128];
		print (scratch);

	}
	
	// Update is called once per frame
	void Update () {
		for (int i = 0; i < nob.Length; i ++) {
			nob[i] = MidiInput.GetKnob(i+57,MidiInput.Filter.Realtime);
		}
		for (int i = 0; i < key.Length; i++) {
			key[i]*=.96f;
			key[i] += MidiInput.GetKey (i);
		}
//		print (nob [1]);
//		print ("poop");

//		scratch.brightness = key [50]*3;
//		scratch.lineWidth = key [52]*10;

		scratch.brightness = nob [0]*3;
		scratch.lineWidth = nob [1]*10;
		scratch.textureTile = nob [2]*5;
		scratch.hueShift = nob [3]*20;
		scratch.speed = nob [4]*50;
		scratch.shadowSpeed = nob [5]*5;
		scratch.colorRandomize = nob [6];
		scratch.shadowTile = nob [7];
		transform.Rotate (new Vector3 (nob [0], nob[1], nob[2]));
//		transform.Rotate (new Vector3 (key [46], key[48], key[44]));

	}
}
