using UnityEngine;
using System.Collections;

public class revolver : MonoBehaviour {

	// have a target with a position that only gets updated when the controller is on a ring
	// have a revolver that looks at this point all the time
	// have another controller that lerps toward this one
	// have another controller that maintains momentum from 
	// main controller lerps toward the aimer or the rotator

	public float distanceToCenter = 1;
	private Vector3 moveTarget;

	public GameObject moveTargetIndicator;
	public GameObject controlTarget;
	public GameObject aimAtTarget;
	public float targetSpeed = 2;

	private GameObject aimer;

	private float momentum = 0;
	private float[] averageMomentumArray;

	public float springMass = .1f;
	public float springDamp = .1f;

	pSpring spring;

	// Use this for initialization
	void Start () {
		moveTarget = Vector3.zero;
		aimer = new GameObject ();
		averageMomentumArray = new float[500];
		spring = new pSpring ();
		spring.Position = moveTargetIndicator.transform.position;
		spring.mass = springMass;
		spring.damp = springDamp;
	}
	
	// Update is called once per frame
	void Update () {
		moveIndicatorToTarget ();
//		buildMomentum ();
	}

	void moveIndicatorToTarget(){
		
		spring.Force = controlTarget.transform.localPosition;// - moveTargetIndicator.transform.localPosition;
		moveTarget = spring.elapse (Time.deltaTime);
		Vector3 norm = moveTarget.normalized;
		moveTargetIndicator.transform.position = norm;


//		moveTarget = Vector3.MoveTowards (moveTarget, controlTarget.transform.position, Time.deltaTime*targetSpeed);
//		moveTargetIndicator.transform.position = moveTarget;
		aimer.transform.LookAt (moveTarget);
		print(Vector3.Angle(aimAtTarget.transform.localEulerAngles,aimer.transform.localEulerAngles));
		print (aimer.transform.localEulerAngles);
		buildMomentum ();
	}

	void buildMomentum(){
		momentum = average (averageMomentumArray, aimAtTarget.transform.localEulerAngles.y-aimer.transform.localEulerAngles.y);
//		aimAtTarget.transform.
	}


	float average(float[] a, float n){
		for (int i = 0; i < a.Length-1; i++) {
			a[i] = a[i+1];
		}
		a[a.Length-1] = n;
		float avg =0f;
		for (int i = 0; i < a.Length; i++) {
			avg+=a[i];
		}
		avg/=a.Length;
		return avg;

	}
}
