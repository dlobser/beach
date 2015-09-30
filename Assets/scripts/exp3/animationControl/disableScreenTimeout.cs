using UnityEngine;
using System.Collections;

public class disableScreenTimeout : MonoBehaviour {

	// Use this for initialization
	void Start () {
		Screen.sleepTimeout = SleepTimeout.NeverSleep;
	}

}
