using UnityEngine;
using System.Collections;

public class pingPongPaddle : MonoBehaviour {

	public float max;
	public float min;
	public float speed;
	public GameObject ball;
	public float noiseSeed = 0;
	private float counter = 0;
	Vector3 lerped;
	Vector3 noise;
	private Vector3 initialPosition;
	// Use this for initialization
	void Start () {
		initialPosition = transform.localPosition;
	}
	
	// Update is called once per frame
	void Update () {
		counter += speed*Time.deltaTime;

		noise = new Vector3(0,Remap(Mathf.PerlinNoise (counter, counter * 1.1f),0,1,min,max),0);
		float dist = Vector3.Distance (new Vector3(transform.localPosition.x,ball.transform.localPosition.y,transform.localPosition.z), ball.transform.localPosition);
		lerped = Vector3.Lerp(noise,new Vector3(0,ball.transform.localPosition.y,0),Remap(dist,0,.01f,1,0));
		transform.localPosition = new Vector3 (initialPosition.x, lerped.y, initialPosition.z);
	}

	public float Remap (float value, float from1, float to1, float from2, float to2) {
		return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
	}
}
