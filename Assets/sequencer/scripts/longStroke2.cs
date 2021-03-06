﻿using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class longStroke2 : Stroke {

	public int subTrailType = 0;

	public override void Awake(){
		animators = new List<animate> ();
		registerAnimators (this.gameObject);
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
			subTrails [subTrails.Count - 1].GetComponent<Stroke> ().Trail = strokeUtils.noiseVecArray((Vector3[])  Trail.Clone(), trailHead, .9f);
			subTrails [subTrails.Count - 1].GetComponent<Stroke> ().trailHead = trailHead;
			subTrails [subTrails.Count - 1].GetComponent<Stroke> ().playButton ();

		}
		for(int i = 0 ; i < subTrails.Count ; i++){
			subTrails[i].GetComponent<Stroke> ().playBack ();
		}
	}

	public override void playButton(){
//		base.playButton ();
		if (!isPlaying && age < beatGlobals.Instance.strokeAge && subTrails.Count==0) {
			isPlaying = true;
			trailWidth = bGlobals.trailWidth;
			lRend.SetWidth (0, trailWidth);
			playStart ();
			timer = 1e6f;
		}

	}

	public bool subTrailsReadyToDie(){

		bool subTrail = false;
		List<int> removeWhich = new List<int> ();

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

		return subTrail;
	}

	public override void playBack(){
		age += Time.deltaTime;

		if (isPlaying && trailHead > 0) {
			
			root.transform.localPosition = Trail [playbackHead];
			playbackHead++;
			timer += Time.deltaTime;
			makeSubTrail ();

			if (playbackHead > trailHead - 1) {
				isPlaying = false;
				playbackHead = 0;
				playEnd ();
			}
		} 
		else if (!isPlaying) {
				
			if(subTrailsReadyToDie())
				destruct ();
			
			makeSubTrail ();

			for(int i = 0 ; i < subTrails.Count ; i++){
				subTrails[i].GetComponent<Stroke> ().isPlaying=false;
			}
		}
		if (readyToDie) {
			strokeUtils.clearStrokes (subTrails);
			readyToDie = !readyToDie;
			timer = 1e6f;
			age = 0;
			playbackHead = 0;
			root.transform.localPosition = Trail [playbackHead];
			trailToLine (0, 0);
//			float sc =0;
//			root.transform.GetChild (0).transform.localScale = new Vector3 (sc, sc, sc);

		}
	}

}
