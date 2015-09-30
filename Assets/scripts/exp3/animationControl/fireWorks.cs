using UnityEngine;
using System.Collections;

public class fireWorks : MonoBehaviour {

	public GameObject spark;
	public float speed;
	public int sparkAmount;

	public Color[] colors;

	private fire[] sparks;

	public class fire{
		public GameObject ball;
		public Vector3 Acceleration;
		public Vector3 Velocity;
		public float damp;
		public void solve(){
			this.Velocity += this.Acceleration ;
			this.Velocity *= this.damp;
			print (this.Acceleration);
			this.ball.transform.position += this.Velocity;
		}
	}
	// Use this for initialization
	void Start () {
		sparks = new fire[sparkAmount];
		for (int i = 0; i < sparkAmount; i++) {
			sparks[i] = new fire();
			sparks[i].ball = Instantiate(spark);
			sparks[i].Acceleration = Vector3.up;
			sparks[i].Velocity = Vector3.zero;
			sparks[i].damp = .1f;
		}
	}
	
	// Update is called once per frame
	void Update () {
		for (int i = 0; i < sparkAmount; i++) {
			sparks[i].solve();
		}
	}
}
