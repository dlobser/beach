using UnityEngine;
using System.Collections;

public class midiAble : MonoBehaviour {
	
	wireFrameScratch scratch;
	float[] nob;
	float[] key;
	// Use this for initialization
//	void Start () {
//		scratch = GetComponent<wireFrameScratch> ();
//		nob = new float[100];
//		for (int i = 0; i < nob.Length; i ++) {
//			nob[i] = i+13;
//		}
//		key = new float[128];
//		
//	}
//	
//	// Update is called once per frame
//	void Update () {
//		for (int i = 0; i < nob.Length; i ++) {
//			nob[i] = MidiInput.GetKnob(i,MidiInput.Filter.Realtime);
//		}
//		for (int i = 0; i < key.Length; i++) {
//			key[i]*=.96f;
//			key[i] += MidiInput.GetKey (i);
//			if(key[i]>.5)
//				print (key[i]+","+i);
//		}
//		
//		int qq = 16;
//		scratch.brightness = nob [++qq]*3;
//		scratch.lineWidth = nob [++qq]*10;
//		
//		scratch.brightness += nob [++qq]*3;
//		scratch.lineWidth += nob [++qq]*10;
//		scratch.textureTile = nob [++qq]*5;
//		scratch.hueShift = nob [++qq]*20;
//		scratch.speed = nob [++qq]*50;
//		scratch.shadowSpeed = nob [++qq]*5;
//		scratch.colorRandomize = nob [++qq];
//		scratch.shadowTile = nob [++qq];
////		transform.Rotate (new Vector3 (key [20], key[21], key[22]));
//		transform.Rotate (new Vector3 (nob [++qq], nob[++qq], nob[++qq]));
//		
//	}
}
