using UnityEngine;
using System.Collections;

public class changeRenderOrderLayer : MonoBehaviour {
	public int layer;
	// Use this for initialization
	void Start () {
		GetComponent<Renderer> ().sortingOrder = layer;
		GetComponent<Renderer> ().material.renderQueue = layer;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
