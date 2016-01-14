using UnityEngine;
using System.Collections;

public class loadTemples : MonoBehaviour {

	int i = 0 ;
	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if(i==0)
			Application.LoadLevelAdditive ("loveTemple");
		if(i==1)
			Application.LoadLevelAdditive ("diamondTemple");
		if(i==2)
			Application.LoadLevelAdditive ("visitationsTemple");
		if(i==3)
			Application.LoadLevelAdditive ("babelTemple");
		if(i<4)
			i++;
	}
}
