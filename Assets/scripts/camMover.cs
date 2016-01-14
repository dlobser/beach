using UnityEngine;
using System.Collections;

public class camMover : MonoBehaviour {

	public bool look = true;
	public float speed = .1f;
	public float minSpeed = .1f;
	public float slow = .99f;
	public float startPos = -100f;
	public float endPos = 0f;
	public float border = 300;
	GameObject aimer;
	Transform kid; 
//	Transform kid2;

	public GameObject polePositions;
	private float proximitySpeed = 1f;


	Quaternion previous;

	// Use this for initialization

	void Start () {

//		OVRDevice.ResetOrientation ();	

		transform.position = new Vector3(0f,0f,startPos);
		if (look)
			aimer = GameObject.Find ("aimRoot").gameObject;
		else
			aimer = transform.gameObject;
		kid = transform.GetChild (0);
//		kid2 = kid.transform.GetChild (0);
		previous = Quaternion.identity;
		print ("aimer");
		print (aimer);

	}

	void CheckProximity(){
		int amt = polePositions.transform.childCount;
		float min = 1e6f;
		int which = 0;
		for (int i = 0; i < amt; i++) {
			GameObject child = polePositions.transform.GetChild(i).gameObject;
			float dist = Vector3.Distance(Camera.main.transform.position,child.transform.position);
			if(dist<min){
				min=dist;
				which = i;
			}
		}
		float dist2 = Vector3.Distance(Camera.main.transform.position,polePositions.transform.GetChild(which).transform.position);
		if (Camera.main.transform.position.y < 50 && Vector3.Distance (Camera.main.transform.position, Vector3.zero) < border)
			proximitySpeed = Mathf.Max (1, dist2 * .05f);
		else
			proximitySpeed = 1;
	}

	
	// Update is called once per frame

	void Update () {
//		if(transform.position.y<100f&&transform.position
		if (look) {
			if(polePositions!=null)
				CheckProximity();

//			print (proximitySpeed);

			float rot = Camera.main.transform.rotation.x;
//			aimer.transform.localEulerAngles = new Vector3(0,rot,0);

//			kid2.transform.Rotate(new Vector3(0f , kid2.transform.rotation.y*2f,0f));
//			transform.rotation = kid2.transform.rotation;
//			aimer.transform.localEulerAngles += new Vector3(0,(Quaternion.Lerp(Camera.main.transform.rotation,Quaternion.identity,-2).y),0);
//			if(previous.y-Camera.main.transform.rotation.y>.01f)
//				aimer.transform.localEulerAngles -= new Vector3(0,5,0);
//			aimer.transform.rotation = Quaternion.Lerp(Camera.main.transform.rotation,new Quaternion(0,0,0,1),-.0001f);
//			aimer.transform.localEulerAngles+=new Vector3(0,( Camera.main.transform.rotation.y-previous.y)*100f,0);
//			aimer.transform.localEulerAngles = new Vector3(0,Quaternion.Lerp (aimer.transform.rotation,Camera.main.transform.rotation,.1f).y*180f,0);
//			aimer.transform.eulerAngles = Vector3.Lerp(aimer.transform.eulerAngles,Camera.main.transform.eulerAngles,.1f);
//			print (previous.y-Camera.main.transform.rotation.y);
//			print (aimer);
//			float angle = Quaternion.Angle(aimer.transform.rotation,Camera.main.transform.rotation);
//
//			aimer.transform.rotation = Quaternion.Lerp(aimer.transform.rotation,Camera.main.transform.rotation,angle*.0001f);
//			if(angle<20)
//				aimer.transform.rotation = Quaternion.Lerp(aimer.transform.rotation,Quaternion.identity,.01f);
//			if(Input.GetButtonUp("Fire1"))
//			{
//				OVRDevice.ResetOrientation ();
//				// Do something if tap ends
//			}
//			if(Camera.main.transform.rotation.y>0)
//			print (Vector3.Angle(aimer.transform.eulerAngles,Camera.main.transform.eulerAngles));
//			print (Camera.main.transform.rotation);
			transform.Translate (Camera.main.transform.forward * speed * proximitySpeed * Time.deltaTime * 30f);
//			transform.eulerAngles += new Vector3(0,1,0);
			transform.Translate (Vector3.up*Mathf.Sin(Time.fixedTime*30f)*.021f);

			if(transform.position.y>5)
				transform.Translate (Vector3.up*-(Mathf.Pow(transform.position.y,1.1f)*.001f));
			if(transform.position.y<-8)
				transform.localPosition = new Vector3(transform.position.x,-8,transform.position.z);

			float dist = Vector3.Distance(transform.position,Vector3.zero);
//			previous = Camera.main.transform.rotation;
			if(dist>border ){
				aimer.transform.localEulerAngles += new Vector3(0,(dist-border)*.01f,0);
////				transform.position = new Vector3(transform.position.x*-1,transform.position.y,transform.position.z*-1);
			}
//			Application.
		} else {
			if(speed>minSpeed)
				speed*=slow;
			if(speed<minSpeed)
				speed=minSpeed;
			if(transform.position.z>endPos)
				minSpeed*=1.005f;
			transform.Translate (new Vector3(0f,0f,speed));
//			if(transform.position.z>endPos)
//				transform.position = new Vector3(0f,0f,startPos);
		}
	}
}
