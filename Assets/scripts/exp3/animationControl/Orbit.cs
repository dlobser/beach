using UnityEngine;
using System.Collections;

public class Orbit : MonoBehaviour {

    public Transform center;
    public float xSpeed = 0.1f;
    public float ySpeed = 0.1f;
    public float zSpeed = 0.2f;
    

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update() {
        this.transform.RotateAround(center.right, xSpeed * Time.deltaTime);
        this.transform.RotateAround(center.up, ySpeed * Time.deltaTime);
        this.transform.RotateAround(center.forward, zSpeed * Time.deltaTime);
        
	}
}
