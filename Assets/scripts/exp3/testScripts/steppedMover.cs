using UnityEngine;
using System.Collections;

public class steppedMover : MonoBehaviour {

	public int steps = 3;
	public Vector3 start = Vector3.zero;
	public Vector3 end = Vector3.zero;
	private float counter;
	private float up;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		counter += Time.deltaTime;
		if (counter > .1) {
			counter = 0;
			up++;
		}
		if (up > steps) {
			up=0;
		}
		transform.position = Vector3.Lerp (start, end, up/(float)steps);
		print (Mathf.RoundToInt (Time.time % steps)/(float)steps);
	}
}
