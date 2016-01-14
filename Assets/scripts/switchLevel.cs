using UnityEngine;
using System.Collections;

public class switchLevel : MonoBehaviour {
	
	public GameObject fader;

	void Update(){
		if (Input.GetKey (KeyCode.Space)) {
			fader.SendMessage ("EndScene");
		}

//		if(Input.GetButtonUp("Fire1"))
//		{
//			OVRDevice.ResetOrientation ();
//			// Do something if tap ends
//		}
	}

	void OnTriggerEnter(){
		print ("hit");
		fader.SendMessage ("EndScene");

	}
}
