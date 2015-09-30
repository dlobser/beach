using UnityEngine;
using System.Collections;

public class deactiveAtLessAltitude : MonoBehaviour {

	public float altitude;
	private float count = 1f;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		if (transform.position.y < altitude) {
			transform.localScale*=.95f;
			count-=Time.deltaTime;
		}
		if(count<0)
			transform.gameObject.SetActive(false);
	}
}
