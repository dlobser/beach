using UnityEngine;
using System.Collections;

public class lgtMove : MonoBehaviour {

	public float speed = 1;
	public float distance = 100;
	public float increase = 1.01f;
	
	public float count;
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		count += Time.deltaTime;
		increase = 1 + (Mathf.Sin (count * .03f) * .003f);
		speed *= increase;
		transform.localPosition = new Vector3 (0, 0, distance+Mathf.Sin (count * speed)*distance);
	}
}
