using UnityEngine;
using System.Collections;

public class spring1 : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

//
//		public double massOther = 1;
//		
//		double R = Vector2Math.Distance(Position, OtherObject.Position);
//		
//		double V = (massOther) / Math.Pow(R,2) * Time.DeltaTime;
//		
//		float VRmod = (float)Math.Round(V/(R*0.001), 0, MidpointRounding.AwayFromZero);
//		if(V > R*0.01f)
//		{
//			for (int x = 0; x < VRmod; x++)
//			{
//				EulerMovement(OtherObject, Time.DeltaTime / VRmod);
//			}
//		}
//		else
//			EulerMovement(OtherObject, Time.DeltaTime);
//		
//	}
//	
//	public void EulerMovement(ExtTerBody OtherObject, float deltaTime)
//	{
//		
//		double massOther = OtherObject.Mass;
//		
//		double R = Vector2Math.Distance(Position, OtherObject.Position);
//		
//		double V = (massOther) / Math.Pow(R, 2) * deltaTime;
//		
//		Vector2 NonNormTwo = (OtherObject.Position - Position).Normalized() * V;
//		
//		Vector2 NonNormDir = Velocity + NonNormTwo;
//		Velocity = NonNormDir;
//		
//		
//		
//		//Debug.WriteLine("Velocity=" + Velocity);
//		Position += Velocity * deltaTime;
//	}
}
