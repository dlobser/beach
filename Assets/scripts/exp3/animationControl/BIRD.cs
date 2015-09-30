using UnityEngine;
using System.Collections;

public class BIRD : MonoBehaviour {

    public Transform goal;
    public float moveSpeed;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
        this.transform.position = Vector3.MoveTowards(this.transform.position, goal.transform.position, moveSpeed * Time.deltaTime);
        this.transform.LookAt(goal);

        if (Vector3.Distance(goal.position, this.transform.position) < 0.1f)
        {
            this.transform.rotation = Quaternion.Lerp(this.transform.rotation,goal.transform.rotation, 5f * Time.deltaTime);
        }
	}
}
