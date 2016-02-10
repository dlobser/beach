using UnityEngine;
using System.Collections;

public class PodRotation : MonoBehaviour {

    public Transform goal;
    public float rotateSpeed = 0.01f;
    public bool x = true;
    public bool y = true;
    public bool z = true;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {


		Vector3 rot = Quaternion.FromToRotation( goal.forward, transform.forward).eulerAngles;

        if (rot.x > 180) rot.x -= 360f;
        if (rot.y > 180) rot.y -= 360f;
        if (rot.z > 180) rot.z -= 360f;

        if (rot.x > 0) rot.x = 1;
        else if (rot.x < 0) rot.x = -1;
        else rot.x = 0;

        if (rot.y > 0) rot.y = 1;
        else if (rot.y < 0) rot.y = -1;
        else rot.y = 0;

        if (rot.z > 0) rot.z = 1;
        else if (rot.z < 0) rot.z = -1;
        else rot.z = 0;

        if (!x) rot.x = 0;
        if (!y) rot.y = 0;
        if (!z) rot.z = 0;

        this.transform.Rotate((rot) * Time.deltaTime * rotateSpeed);


	}
}
