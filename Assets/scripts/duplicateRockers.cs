using UnityEngine;
using System.Collections;

public class duplicateRockers : MonoBehaviour {

	public int amount = 12;
	public float offset = 10;
	// Use this for initialization
	void Start () {
		GameObject go = transform.GetChild(0).gameObject;
		for (int i = 0; i < amount; i++) {
			GameObject g = Instantiate (go)as GameObject;
			GameObject gp = new GameObject ();
			g.transform.parent = gp.transform;
			gp.transform.parent = transform;
			g.transform.localPosition = new Vector3 (0, 0, offset);
			gp.transform.localEulerAngles = new Vector3 (0, ((float)i / (float)amount) * 360, 0);
			gp.transform.position = transform.position;
			for (int j = 0; j < 5; j++) {
				GameObject q = Instantiate (go)as GameObject;
				q.GetComponent<TransformUniversal> ().rotateOscillateOffset = new Vector3 (j, j, j);
				q.transform.position = g.transform.position;
				q.transform.Translate(new Vector3 (0, 4*(5-j), 0));
				q.transform.parent = g.transform;
				if (j != 0)
					g.transform.GetChild (g.transform.childCount - 2).parent = q.transform;
			}
		}
	}

//	Transform getNestedChild(Transform t, int i){
//
//	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
