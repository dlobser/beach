using UnityEngine;
using System.Collections;

public class testReaction : MonoBehaviour {

	public Reaktion.Reaktor react;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		Debug.Log (react.Output);
	}
}
