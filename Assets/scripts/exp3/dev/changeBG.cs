using UnityEngine;
using System.Collections;

public class changeBG : MonoBehaviour {

	public Color[] colors;
	private int counter = 0;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		counter++;
		if (counter > colors.Length-1)
			counter = 0;
		Camera.main.backgroundColor = colors [counter];
	}
}
