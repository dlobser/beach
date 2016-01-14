using UnityEngine;
using System.Collections;

public class moveToTarget : MonoBehaviour {

	public GameObject target;
	public float speed;
	public bool rotate = false;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		this.transform.position =  Vector3.MoveTowards(transform.position, target.transform.position, speed);
		if (rotate)
			this.transform.rotation = Quaternion.RotateTowards (this.transform.rotation, target.transform.rotation, speed);
	}
}
