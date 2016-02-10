//using UnityEngine;
//using System.Collections;

//public class midiLaser1 : MonoBehaviour {
		
//	GameObject[] kids;
//	public float mult = 10;
//	float[] nob;
//	float[] nob2;
//	public AudioClip aud;
//	public TrailRenderer[] trails;
//	// Use this for initialization
//	void Start () {
//		kids = new GameObject[3];
//		nob = new float[20];
//		nob2 = new float[20];
//		for (int i = 0; i < nob.Length; i ++) {
//			nob[i] = i+14;
//		}
//		kids [0] = transform.gameObject;
//		kids [1] = transform.GetChild (0).gameObject;
//		kids [2] = transform.GetChild (0).transform.GetChild (0).gameObject;

////		addAudio (0);
////		addAudio (1);
//		addAudio (2);


//	}

//	void addAudio(int i){
//		AudioSource audi = kids [i].AddComponent<AudioSource> ();
//		audi.clip = aud;
//		audi.Play ();
//		audi.loop = true;
//		audi.spatialBlend = 1.0f;
//		audi.dopplerLevel = 1;
//		audi.rolloffMode = AudioRolloffMode.Custom;
//		audi.maxDistance = 10;
//		audi.minDistance = 5;
//	}
	
//	// Update is called once per frame
//	void Update () {
//		float t = Time.deltaTime;

//		for (int i = 0; i < nob.Length; i ++) {
//			nob[i] = MidiInput.GetKnob(i+14,MidiInput.Filter.Realtime)*mult;
//			nob2[i] = MidiInput.GetKnob(i,MidiInput.Filter.Realtime)*mult;
////			print (nob[i]);
//		}
//		for (int i = 0; i < trails.Length; i++) {
//			trails[i].time = nob2[3];
//			trails[i].startWidth =( nob2[2]*.4f)+.05f;
//		}
//		Camera.main.transform.localPosition = new Vector3 (0, 0, nob2 [4] * -2);
//		Camera.main.transform.parent.transform.Rotate (0, nob2 [5] * -.1f*t*60,0);
////		print (nob2 [9]+","+nob2[12]);

//		kids[0].transform.Rotate (new Vector3 (nob [0]*t*60, nob[1]*t*60, nob[2]*t*60));
//		kids[0].transform.localPosition = new Vector3 (0,.5f+nob2[6],0);
////		kids [0].GetComponent<AudioSource> ().pitch = (nob [0]*.1f)+.8f;
//		kids[1].transform.Rotate (new Vector3 (nob [3]*t*60, nob[4]*t*60, nob[5]*t*60));
//		kids[1].transform.localPosition = new Vector3 (0,nob2[6]*2,0);
////		kids [1].GetComponent<AudioSource> ().pitch = (nob [3]*.1f)+.8f;
//		kids[2].transform.Rotate (new Vector3 (nob [6]*t*60, nob[7]*t*60, nob[8]*t*60));
//		kids[2].transform.localPosition = new Vector3 (0,nob2[6]*2,0);
//		kids[2].transform.localScale = new Vector3 (.1f+nob2[8]*.2f,.1f+nob2[8]*.2f,.1f+nob2[8]*.2f);
//		kids [2].GetComponent<AudioSource> ().pitch = (nob [6]*.1f)+.8f;
//		kids [2].GetComponent<AudioSource> ().maxDistance = (nob2 [9]*3)+10;
//		kids [2].GetComponent<AudioSource> ().dopplerLevel = (nob2 [12]*.5f);



//	}
//}
