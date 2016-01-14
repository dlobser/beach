using UnityEngine;
using System.Collections;

public class scaleToCamDistance : MonoBehaviour {

	public Vector3 minScale;
	public Vector3 maxScale;
	public Vector2 minMaxDistance;
	public bool lookAtCam = true;

	// Use this for initialization
	void Start () {
	
	}

	float map(float value, float low1, float high1, float low2, float high2){
		return low2 + (value - low1) * (high2 - low2) / (high1 - low1);
	}
	
	// Update is called once per frame
	void Update () {
		float dist = Vector3.Distance (transform.position, Camera.main.transform.position);
		transform.localScale = Vector3.Lerp (minScale, maxScale, map (dist, minMaxDistance.x, minMaxDistance.y, 1, 0));
		if(lookAtCam)
			transform.LookAt (Camera.main.transform.position);
	
	}

}
