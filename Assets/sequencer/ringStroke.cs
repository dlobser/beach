using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class ringStroke : MonoBehaviour {

	public GameObject ringObject;
	public int amount;
	GameObject[] rings;
	List<Vector3> trail;
	Vector3[] prevRing;

	// Use this for initialization
	void Start () {
		trail = new List<Vector3> ();
		rings = new GameObject[amount];
		prevRing = new Vector3[amount];
		for (int i = 0; i < amount; i++) {
			rings [i] = Instantiate (ringObject);
			Material m = rings [i].GetComponent<MeshRenderer> ().material;
			m.SetFloat ("_Radius",(((float)i/(float)amount)*1.5f)-1);
			for (int j = 0; j < 10; j++) {
				trail.Add (Vector3.zero);
			}
		}

	}
	
	// Update is called once per frame
	void Update () {
		trail.Add (transform.position);
		if (trail.Count > amount*10)
			trail.RemoveAt (0);
		int q = -1;
		for (int i = 0; i < trail.Count; i+=10) {
			rings [++q].transform.position = trail [i];

			Material m = rings [q].GetComponent<MeshRenderer> ().material;
			float dist = Vector3.Distance (prevRing [q], rings [q].transform.position);
			Vector3 minus = prevRing [q] - rings [q].transform.position;
			m.SetColor ("_Color",new Color(1-minus.x,1-minus.y,1-minus.z)*
				Mathf.Max(0,dist-.02f)
				*5);
			prevRing[q] = rings [q].transform.position;
		}
		
	}
}
