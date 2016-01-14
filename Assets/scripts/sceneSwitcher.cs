using UnityEngine;
using System.Collections;

public class sceneSwitcher : MonoBehaviour {

	public int nextScene;

	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if(Input.GetButton("Fire1")|| Input.GetMouseButtonUp(0)||Input.GetMouseButtonDown(0))
		   Application.LoadLevel(nextScene);
	}


}
