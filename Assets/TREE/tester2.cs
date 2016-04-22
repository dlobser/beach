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
	List<int[]> testList3;

	TreeTransform xForm;


	List<int> tt;
	// Use this for initialization
	void Start () {

	
//
//		string dd = "0|-1|-1|-1|-1|-1|-1";
//		string t = "0|-1|-1|-1|-1";
//		string f = "0|-1|-1";


		p = this.gameObject.AddComponent<TREE>();
		p.setDefaultJoint( defaultJoint);


	
		p.generate (
			"joints",	"10,32,1",
			"rads",		"2,2,1",
			"angles",	"90,45,30",
			"length",	"1,1",
			"divs",		"1,1,2",
			"start",	"0,4,4"
		);
		
//		testList = TREEUtils.makeList  (t, p.GetComponent<TREE>());
//		testList2 = TREEUtils.makeList (f, p.GetComponent<TREE>());
//
//		testList3 = TREEUtils.makeList (dd, p.GetComponent<TREE>());
//
//		for (int i = 0; i < testList2.Count; i++) {
//			GameObject g = TREEUtils.findJoint (testList2 [i], 0, transform.GetChild (0).gameObject);
//			int j = g.GetComponent<Joint> ().joint;
//			g.transform.Rotate (new Vector3 (0, 0, 8));
////			g.transform.localScale = (new Vector3 (1/(j+.1f),1/(j+.1f),1/(j+.1f)));
//		}
//
		xForm = new TreeTransform ();
		xForm.Setup(
			new string[]{
				"0|-1|-1|-1|-1|-1|-1",
				"0|-1|-1|-1|-1",
				"0|-1|-1"},
			new string[]{
				"rx:0,srx:100,sfrx:1,ssrx:100,smrx:0",
				"rx:0,srx:10,sfrx:.1,ssrx:-.3,smrx:60",
				"rx:0,srx:10,sfrx:.5,ssrx:-.1,smrx:60",
			},p);



	}



	// Update is called once per frame
	void Update () {

		xForm.Update ();
//		for (int i = 0; i < testList.Count; i++) {
//			GameObject g = TREEUtils.findJoint (testList [i], 0, transform.GetChild (0).gameObject);
//			int j = g.GetComponent<Joint> ().joint;
//			g.transform.Rotate (new Vector3 (0, 0, 5));
//			//			g.transform.localScale = (new Vector3 (1/(j+1),1/(j+1),1/(j+1)));
//		}



//		for (int i = 0; i < testList.Count; i++) {
//			GameObject g = TREEUtils.findJoint (testList [i], 0, transform.GetChild (0).gameObject);
//			int j = g.GetComponent<Joint> ().joint;
//			g.transform.Rotate (new Vector3 ( 0,0, Mathf.Sin(j-Time.time*3f)*.5f));
//		}
//		for (int i = 0; i < testList3.Count; i++) {
//			GameObject g = TREEUtils.findJoint (testList3 [i], 0, transform.GetChild (0).gameObject);
//			int j = g.GetComponent<Joint> ().joint;
//			g.transform.Rotate (new Vector3 ( 0,0, Mathf.Sin(j-Time.time*4f)*.5f));
//		}

	
	}

	void AddToList(List<int> a){
		a.Add((int)Mathf.Round(Random.Range(0,100)));
	}
}

public class TreeTransform : MonoBehaviour{
	
	List<Dictionary<string, float>> Transforms = new List<Dictionary<string, float>>();
	List<List<int[]>> SelectedJoints = new List<List<int[]>>();
	GameObject root;
	List<List<Vector3>> initialRotation = new List<List<Vector3>>();

	void makeDefaults(int amount){
		for (int i = 0; i < amount; i++) {
			Transforms.Add (new Dictionary<string,float> ());
			Transforms[i].Add ("rx", 0);
			Transforms[i].Add ("ry", 0);
			Transforms[i].Add ("rz", 0);
			//sin rotation
			Transforms[i].Add ("srx", 0);
			Transforms[i].Add ("sry", 0);
			Transforms[i].Add ("srz", 0);
			//sin frequency
			Transforms[i].Add ("sfrx", 0);
			Transforms[i].Add ("sfry", 0);
			Transforms[i].Add ("sfrz", 0);
			//sin speed
			Transforms[i].Add ("ssrx", 0);
			Transforms[i].Add ("ssry", 0);
			Transforms[i].Add ("ssrz", 0);
			//sin multiply
			Transforms[i].Add ("smrx", 0);
			Transforms[i].Add ("smry", 0);
			Transforms[i].Add ("smrz", 0);
		}
	}
	
	public void Setup(string[] joints, string[] args, TREE tree){

		makeDefaults (joints.Length);
		root = tree.gameObject;

		for (int i = 0; i < joints.Length; i++) {
			
			List<int[]> firstList = TREEUtils.makeList  (joints[i], tree.GetComponent<TREE>());
			List<Vector3> initRotations = new List<Vector3>();

			for (int p = 0; p < firstList.Count; p++) {
				GameObject g = TREEUtils.findJoint (firstList[p], 0, root.transform.GetChild (0).gameObject);
				initRotations.Add(g.transform.localEulerAngles);
			}
			initialRotation.Add (initRotations);	
			SelectedJoints.Add(firstList);
			string[] arg = args[i].Split (new string[] { "," }, System.StringSplitOptions.None);
			for (int j = 0; j < arg.Length; j++) {
				string[] a = arg[j].Split (new string[] { ":" }, System.StringSplitOptions.None);
				if(a.Length>1)
					Transforms[i] [a [0]] = float.Parse (a [1]);
			}


		}
			
	}

	public void Update(){
		for (int i = 0; i < SelectedJoints.Count; i++) {
			for (int j = 0; j < SelectedJoints [i].Count; j++) {
				GameObject g = TREEUtils.findJoint (SelectedJoints [i] [j], 0, root.transform.GetChild (0).gameObject);
				int gg = g.GetComponent<Joint> ().joint;
				Vector3 init = initialRotation [i] [j];
				Vector3 rotate = new Vector3 (
						gg+Transforms[i]["rx"],
						gg+Transforms[i]["ry"],
						gg+Transforms[i]["rz"]);		
				g.transform.localEulerAngles = init+(new Vector3 (
					Transforms[i]["smrx"]*Mathf.Sin(((Transforms[i]["ssrx"] * Time.time) + (Transforms[i]["sfrx"] * gg)) * Transforms[i]["srx"]),
					Mathf.Sin(Time.time + gg + Transforms[i]["ry"]),
					Mathf.Sin(Time.time + gg + Transforms[i]["rz"])));				
			}
		}

	}
}