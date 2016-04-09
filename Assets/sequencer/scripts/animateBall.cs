using UnityEngine;
using System.Collections;

public class animateBall : animate {

	public float scale = .02f;
	public override void TriggerOn ()
	{
	}
	public override void TriggerOff(){
		float sc = transform.GetChild (0).localScale.x;
		sc *= .95f;
		transform.GetChild(0).localScale = new Vector3 (sc, sc, sc);	
	}
	public override void Play(float t){
		float sc = (-Mathf.Cos (t * Mathf.PI * 2) + 1) * scale;
		transform.GetChild(0).localScale = new Vector3 (sc, sc, sc);	
	}
}
