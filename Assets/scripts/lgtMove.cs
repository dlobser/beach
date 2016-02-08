using UnityEngine;
using System.Collections;

public class lgtMove : MonoBehaviour {

	public float speed = 1;
	public float distance = 100;
	public float increase = 1.01f;
	public float count;

	float initSpeed,initDistance,initIncrease,initCount;
	
	// Use this for initialization
	void Awake () {
		initSpeed = speed;
		initDistance = distance;
		initIncrease = increase;
		initCount = 0;
	}
	
	// Update is called once per frame
	void Update () {

		count += Time.deltaTime;
		increase = 1 + (Mathf.Sin (count * .03f) * .003f);
		speed *= increase;
		transform.localPosition = new Vector3 (0, 0, distance+Mathf.Sin (count * speed)*distance);
	}

	void reset(){
		speed = initSpeed;
		distance= initDistance;
		increase=initIncrease;
		count = initCount;
	}
}
