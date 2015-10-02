using UnityEngine;
using System.Collections;
using DG.Tweening;
public class moveWayPoint : MonoBehaviour {

	public GameObject[] waypoints;
	public float speed = 1f;
	int c = -1;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {

		if(Input.GetButtonUp("Fire1")){
			c++;
			if(c>waypoints.Length-1)
				c=0;
			transform.DOMove(waypoints[c].transform.position,speed,false);
			transform.DORotate(waypoints[c].transform.localEulerAngles,speed,RotateMode.Fast);
		}
	
	}
}
