using UnityEngine;
using System.Collections;

public class audioToBall : MonoBehaviour {

	public AudioManager aud;
	public Material mat;
	int c = 0;

	// Use this for initialization
	void Start () {
		for (int i = 0; i < transform.childCount; i++) {
			GameObject g = transform.GetChild(i).GetChild(0).GetChild (0).gameObject;
			TrailRenderer line = g.AddComponent<TrailRenderer>();
			line.material = mat;
			line.endWidth = 0f;
			line.time = 1f;
		}
	
	}
	
	// Update is called once per frame
	void Update () {
		c = 0;
		for (int i = 0; i < transform.childCount; i++) {
			if(c>12)
				c=0;
			transform.GetChild(i).transform.Rotate(  v3 (aud.GetBands(++c) * 100));
			transform.GetChild(i).transform.GetChild(0).transform.localScale = new Vector3(40,40,aud.GetBands(c) * 1000);
		}
	}

	Vector3 v3(float i){
			return new Vector3 (i, i, i);
		}
}
