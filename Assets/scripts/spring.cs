using UnityEngine;
using System.Collections;

public class spring : MonoBehaviour {

	public float mass = .5f;
	public float damp =.1f;
	public Vector3 Position = Vector3.zero;
	public Vector3 Velocity = Vector3.one;
	public Vector3 Force = Vector3.one;

	public float maxMass=.15f;
	public float minMass=.075f;

	public GameObject follow;
	int avgAmount = 25;
	float[] ax;
	float[] ay;
	float[] az;

	void Start(){
		ax = new float[avgAmount];
		ay = new float[avgAmount];
		az = new float[avgAmount];
	}

	void Update(){
		Vector3 F = transform.position - follow.transform.position;
		float dist = Vector3.Distance (transform.position, follow.transform.position);
		mass = Mathf.Max (Mathf.Min(maxMass,map (dist, 0, 5, maxMass, minMass)),minMass);
		print (dist);
		Vector3 avgForge = new Vector3 (average (ax, F.x), average (ay, F.y), average (az, F.z));
		Force = avgForge;
		follow.transform.position = elapse (Time.deltaTime);
	}

	Vector3 elapse(float elapsed){

		Velocity += (Force - Position) / mass * elapsed;
		Vector3 v = (Position + Velocity) * (1 - damp * elapsed);
		print (v);
		if (v.x > 0 || v.x < 0)
			return v;
		else
			return Vector3.one;

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
	float map(float s, float a1, float a2, float b1, float b2)
	{
		return b1 + (s-a1)*(b2-b1)/(a2-a1);
	}


}
