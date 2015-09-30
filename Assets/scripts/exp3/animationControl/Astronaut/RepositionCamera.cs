using UnityEngine;
using System.Collections;

public class RepositionCamera : MonoBehaviour {

    public Transform goal;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        this.transform.position = goal.transform.position;
	}
}
