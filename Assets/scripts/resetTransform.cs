using UnityEngine;
using System.Collections;

public class resetTransform : MonoBehaviour {

	Vector3 initPos;
	Vector3 initScale;
	Quaternion initRotation;

	// Use this for initialization
	void Awake () {
		initPos = transform.position;
		initScale = transform.localScale;
		initRotation = transform.rotation;
	}
	
	void reset(){
		transform.position=initPos;
		transform.localScale=initScale;
		transform.rotation=initRotation;
	}
}
