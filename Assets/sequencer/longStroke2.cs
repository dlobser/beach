using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class longStroke2 : Stroke {

	public int subTrailType = 0;

	public override void Awake(){
		bGlobals = beatGlobals.Instance;
		lRend = transform.GetComponent<LineRenderer> ();
		Trail = new Vector3[trailAlloc];
		aud.loop = true;
		timer = 1e6f;
	}

	public override void Draw(Vector3 vec){
		if (!isPlaying) {

			timer += Time.deltaTime;
			if(!vec.Equals(Vector3.zero))
				strokeUtils.addToTrail (Trail, trailHead, vec);

			trailToLine (0,trailHead);
			makeSubTrail ();

			foreach (GameObject t in subTrails) {
				Stroke s = t.GetComponent<Stroke> ();
				strokeUtils.addToTrail (s.Trail, ++s.trailHead, Trail [trailHead]);
			}
			trailHead++;

		}

	}

	public void makeSubTrail(){

		if (timer > trailLength) {
			timer = 0;
			subTrails.Add (Instantiate (bGlobals.subStrokes[subTrailType]));
			subTrails[subTrails.Count-1].GetComponent<Stroke>().Trail = (Vector3[])Trail.Clone();
			subTrails [subTrails.Count - 1].GetComponent<Stroke> ().trailHead = trailHead;
//			subTrails [subTrails.Count - 1].GetComponent<AudioSource> ().clip = aud.clip;// bGlobals.clips[bGlobals.which];
//			subTrails [subTrails.Count - 1].GetComponent<AudioSource> ().loop = true;
			subTrails [subTrails.Count - 1].GetComponent<Stroke> ().playButton ();

		}
		for(int i = 0 ; i < subTrails.Count ; i++){
			subTrails[i].GetComponent<Stroke> ().playBack ();
		}
	}

	public override void playButton(){
		base.playButton ();
		timer = 1e6f;
	}

	public bool subTrailsReadyToDie(){
		bool subTrail = false;
		List<int> removeWhich = new List<int> ();
//		int q = 0;
		for(int i = 0 ; i < subTrails.Count ; i++){

			if (subTrails [i].GetComponent<Stroke> ().readyToDie) {
				removeWhich.Add (i);
			
			}
		}
		foreach (int j in removeWhich) {
			Destroy (subTrails [j]);
			subTrails.RemoveAt (j);
		}
		if (subTrails.Count<1)
			subTrail = true;
//		print (subTrail);
		return subTrail;
	}

	//
	//	root.transform.localPosition = Trail [playbackHead];
	//	trailToLine (0, playbackHead);
	//	//			Debug.Log (trail.Count + " , " + playbackHead);
	//	playbackHead++;
	//
	//	float sc = (-Mathf.Cos (((float)playbackHead / (float)trailHead) * Mathf.PI * 2) + 1) * .08f;
	//	root.transform.GetChild (0).transform.localScale = new Vector3 (sc, sc, sc);

	public override void playBack(){
		age += Time.deltaTime;
		if (isPlaying && trailHead > 0) {


						root.transform.localPosition = Trail [playbackHead];
						trailToLine (0, playbackHead);
						playbackHead++;
			
			
						float sc = (-Mathf.Cos (((float)playbackHead / (float)trailHead) * Mathf.PI * 2) + 1) * .08f;
						root.transform.GetChild (0).transform.localScale = new Vector3 (sc, sc, sc);
			traceLine();
			timer += Time.deltaTime;
			makeSubTrail ();

			if (playbackHead > trailHead - 1) {
				isPlaying = false;
				playbackHead = 0;
				//				root.transform.localPosition = trail [0];
				playEndSound ();
			}
		} 
		else 
			if (!isPlaying) {
			if(subTrailsReadyToDie())
				destruct ();

			traceLine();
			makeSubTrail ();
			//			foreach (GameObject s in subTrails) {
			//				s.GetComponent<Stroke> ().destruct ();
			//			}
			for(int i = 0 ; i < subTrails.Count ; i++){

				subTrails[i].GetComponent<Stroke> ().isPlaying=false;
			}
//			Debug.Log (readyToDie);
		}
		if (readyToDie) {
//			Debug.Log ("ready to die");
			strokeUtils.clearStrokes (subTrails);
			readyToDie = !readyToDie;
			timer = 0;
			age = 0;
			playbackHead = 0;
			root.transform.localPosition = Trail [playbackHead];
			trailToLine (0, 0);
			float sc =0;
			root.transform.GetChild (0).transform.localScale = new Vector3 (sc, sc, sc);

		}
	}

}
