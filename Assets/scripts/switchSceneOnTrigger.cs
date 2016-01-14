using UnityEngine;
using System.Collections;

public class switchSceneOnTrigger : MonoBehaviour {

	public int otherLevel = 0;//"1";
	private bool enter = false;
	GameObject scManager;
	//	private AsyncOperation nextLevel;
	// Use this for initialization
	void Start () {
		scManager = GameObject.Find ("sceneManager");
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
//			print (otherLevel);
		//		if (Application.loadedLevel == 1)
//			print (Application.loadedLevel);


		if(enter)
			scManager.GetComponent<sceneManager>().sceneSwitch (otherLevel);
//				Application.LoadLevel (otherLevel);
		
		//		nextLevel.allowSceneActivation = true;
	}
}
