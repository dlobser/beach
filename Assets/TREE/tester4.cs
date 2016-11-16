using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class tester4: MonoBehaviour {
	
	TREE p;
	public GameObject defaultJoint;
	float s = 0;
	public List<GameObject> kids;
	public Material mat;
	public float scalar = 10;
	GameObject b;

	TreeTransform xForm;
	TreeTransform xForm2;

	Dials d;


	List<int> tt;
	// Use this for initialization
	void Start () {

		d = Dials.Instance;

		d.mult = 10;

		xForm2 = new TreeTransform ();

		p = this.gameObject.AddComponent<TREE>();
		p.setDefaultJoint( defaultJoint);

		TREEUtils.makeDictionary (p.gameObject);

		p.generate (
			"joints",	"1,1",
			"rads",		"3,24",
			"angles",	"120,90",
			"length",	"2.7,5.5",
			"divs",		"1,1",
			"start",	"0,0"
		);

		xForm2.Setup(
			new string[]{
//				"0|-1|-1|-1|-1|-1|-1",
				"0|-1|-1|-1|-1",
				"0|-1|-1",
			},
			new string[]{
				"ssrz:-1.3,sfrz:4.0,smrz:112,sMult:100.4",
				"ory:6,orx:4",
//				"ssrx:-1.3,sfrx:1.0,smrx:2,sMult:1.4"
		},p);

		GameObject g = TREEUtils.findJoint (new int[]{0,0,0}, 0, p.gameObject);


	}



	// Update is called once per frame
	void Update () {
		d.checkDials (false);
		xForm2.updateValue (1, "orx", d.dials [0, 0]);
		xForm2.Update ();

	}

}
