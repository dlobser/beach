using UnityEngine;
using System.Collections;

public class moveForward1 : MonoBehaviour {

	public float maxSpeed;
	float speed;
	public float acceleration = .02f;
	public float deceleration = 1;

	// Use this for initialization
	void Start () {
	
	}
	// Update is called once per frame
	void Update () {
		if(Input.GetButton("Fire1")|| Input.GetMouseButtonUp(0)||Input.GetMouseButtonDown(0)) {  
			if(speed<maxSpeed)
				speed+=acceleration*Time.deltaTime;
		}
		else if (speed > 0)
			speed -= deceleration*Time.deltaTime;
		if (speed > 0) {
			Vector3 F = Camera.main.transform.forward;
			transform.Translate(F*speed*Time.deltaTime);
		}
//		transform.localPosition = Vector3.Scale (transform.localPosition,new Vector3(transform.localPosition.x, transform.localPosition.y*.96f, transform.localPosition.z));

	}
}
