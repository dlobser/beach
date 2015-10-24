using UnityEngine;
using System.Collections;

public class moveForward1 : MonoBehaviour {

	public float maxSpeed;
	float speed;
	public float acceleration = .02f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		print (speed);
		if(Input.GetButton("Fire1")){
			if(speed<maxSpeed)
				speed+=acceleration;
		}
		else if (speed > 0)
			speed -= acceleration;
		if (speed > 0) {
			Vector3 F = Camera.main.transform.forward;
			transform.Translate(F*speed);
		}

	}
}
