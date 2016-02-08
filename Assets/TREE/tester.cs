using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class tester : MonoBehaviour {

//	public GameObject one;
//	public GameObject two;
	TREE p;
	float s = 0;
	public List<GameObject> kids;
	public Material mat;
	public float scalar = 10;
	GameObject b;
	// Use this for initialization
	void Start () {
		kids = new List<GameObject> ();
		Application.targetFrameRate = 30;
		p = transform.gameObject.AddComponent<TREE>();
//		p.Branch ();
//		p.Branch (p.transform.GetChild (0).transform);
//		p.generate ("joints","5,5,1","rads","1,1,1","angles","90,30,40","length","5,3,2","divs","1","start","0");
		p.generate ("joints","5,5","rads","2","angles","90","length","5","divs","1","start","0");

		b = TREEUtils.findJoint  (new int[] {0,0,5,1,3},0,transform.GetChild(0).gameObject);
		Debug.Log (b);
//		one.transform.parent = two.transform;
//		Dictionary<int[],GameObject> d = p.GetComponent<TREE> ().jointDictionary;
//		foreach (KeyValuePair<int[],GameObject> item in d) {
//			Debug.Log (item.Key [0]);
//		}
//		TREEUtils.makeChildList (p.gameObject, kids);
//		Debug.Log (p.gameObject.transform.childCount);
//		for (int i = 0; i < kids.Count; i++) {
//			if (kids [i].name == "New Game Object") {
//				kids [i].GetComponent<Renderer> ().sharedMaterial = mat;
//				kids [i].transform.localScale = new Vector3 (scalar,scalar,scalar);
//			}
//			
//		}
		TREEUtils.makeList("24,32,18;90");
	}
	
	// Update is called once per frame
	void Update () {
		for (int i = 0; i < 6; i++) {
			for (int j = 0; j < 6; j++) {
				for (int k = 0; k < 2; k++) {
					TREEUtils.findJoint (new int[] { 0, k, i, k, j }, 0, transform.GetChild (0).gameObject).transform.Rotate (new Vector3 (0, 0, 1));
				}
			}
		}
//		Dictionary<int[],GameObject> d = p.GetComponent<TREE> ().jointDictionary;
//		foreach (KeyValuePair<int[],GameObject> item in d) {
//			item.Value.transform.Rotate (.05f, .075f, .1f);
//		}
//		for (int i = 0; i < kids.Count; i++) {
//			if (kids [i].name == "New Game Object")
//				kids [i].transform.LookAt (Camera.main.transform.position);
//		}
	}
}
