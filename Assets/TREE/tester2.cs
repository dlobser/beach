using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class tester2 : MonoBehaviour {
	
	TREE p;
	public GameObject defaultJoint;
	float s = 0;
	public List<GameObject> kids;
	public Material mat;
	public float scalar = 10;
	GameObject b;

	List<int[]> testList;
	List<int[]> testList2;


	List<int> tt;
	// Use this for initialization
	void Start () {


		string t = "0|-1|-1|-1|-1";
		string f = "0|-1|-1";


		p = this.gameObject.AddComponent<TREE>();
		p.defaultJoint = defaultJoint;
	
		p.generate (
			"joints",	"3,8",
			"rads",		"8,1",
			"angles",	"90,0",
			"length",	"5,1",
			"divs",		"1",
			"start",	"0,3");
		testList = TREEUtils.makeList (t, p.GetComponent<TREE>());
		testList2 = TREEUtils.makeList (f, p.GetComponent<TREE>());

		for (int i = 0; i < testList2.Count; i++) {
			GameObject g = TREEUtils.findJoint (testList2 [i], 0, transform.GetChild (0).gameObject);
			int j = g.GetComponent<Joint> ().joint;
			g.transform.Rotate (new Vector3 (0, 0, 35));
			//			g.transform.localScale = (new Vector3 (1/(j+1),1/(j+1),1/(j+1)));
		}


	}

	// Update is called once per frame
	void Update () {
//		for (int i = 0; i < testList.Count; i++) {
//			GameObject g = TREEUtils.findJoint (testList [i], 0, transform.GetChild (0).gameObject);
//			int j = g.GetComponent<Joint> ().joint;
//			g.transform.Rotate (new Vector3 (0, 0, 5));
//			//			g.transform.localScale = (new Vector3 (1/(j+1),1/(j+1),1/(j+1)));
//		}
		for (int i = 0; i < testList.Count; i++) {
			GameObject g = TREEUtils.findJoint (testList [i], 0, transform.GetChild (0).gameObject);
			int j = g.GetComponent<Joint> ().joint;
			g.transform.Rotate (new Vector3 ( 0,0, Mathf.Sin(j+Time.time)*.1f));
		}

	
	}

	void AddToList(List<int> a){
		a.Add((int)Mathf.Round(Random.Range(0,100)));
	}
}