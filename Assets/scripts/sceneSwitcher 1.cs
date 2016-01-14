using UnityEngine;
using System.Collections;

public class sceneSwitcher1 : MonoBehaviour {
	public int otherLevel = 1;
	private bool enter = false;
//	private AsyncOperation nextLevel;
	// Use this for initialization
	void Start () {
		enter = false;
//		nextLevel = Application.LoadLevelAsync(otherLevel);
//		nextLevel.allowSceneActivation = false;
	}
	
	// Update is called once per frame
	void Update () {
		if(Time.frameCount>30)
		enter = true;
	}

	void OnTriggerEnter(){
		print ("hit");
//		if (Application.loadedLevel == 1)
			print (Application.loadedLevel);
		if(enter)
		Application.LoadLevel (otherLevel);
	
//		nextLevel.allowSceneActivation = true;
	}
}
