using UnityEngine;
using System.Collections;

public class pSpring : MonoBehaviour {

	public float mass = .5f;
	public float damp =.1f;
	public Vector3 Position, Velocity, Force = Vector3.zero;
//	public Vector3 Velocity = Vector3.zero;
//	public Vector3 Force = Vector3.zero;

	public Vector3 elapse(float elapsed){
//		print (Force);
//		print (Position);
//		print (Velocity);
//		print ("p");
		Velocity += ((Force - Position) / mass * elapsed);
		Position = (Position + Velocity) * (1 - damp * elapsed);
		return Position;

	}




}
