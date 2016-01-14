using UnityEngine;
using System.Collections;

public class makeFractalTriangles : MonoBehaviour {

	public GameObject Root;
	public GameObject thing;
	public int radMin = 3;
	public int radMax = 8;
	public int amount = 10;
	public float depth = 20;
	private GameObject P;
	private GameObject P2;
	// Use this for initialization
	void Awake () {
		if (amount % 2 != 0)
			amount += 1;
		makeLayers (Root, amount);
		flattenChildren (Root);

	}

	void makeLayers(GameObject Pos, int amount){

		for(int j = 0 ; j < amount ; j++){
			int rad1 = (int)Random.Range (radMin, radMax);
			int rad2 = (int)Random.Range (radMin, radMax);

			GameObject root = new GameObject();
			root.transform.position = Root.transform.position;

			root.transform.Translate(0,0,j*depth);
			
			makeRadial (root, rad1, 12 ,2 , false);
			root.transform.parent = Root.transform;
			
			for (int i = 0; i < root.transform.childCount; i++) {
				makeRadial (root.transform.GetChild(i).transform.GetChild(0).gameObject, rad2,12,29,true);
			}
		}

	}

	void makeRadial(GameObject Pos, int amount, float dist, float scale, bool make){
		for(int i = 0 ; i < amount ; i++){
			GameObject P = new GameObject();
			GameObject t = new GameObject();//Instantiate(thing) as GameObject;
			t.transform.localPosition = new Vector3(0,dist,0);
			t.transform.localScale = new Vector3(scale,scale,scale);
			t.transform.parent = P.transform;
			P.transform.Rotate(0,0,(i/(float)amount)*360);
			P.transform.position = Pos.transform.position;
			P.transform.parent = Pos.transform;
		}
		if (make) {
			GameObject P = new GameObject();
			P.transform.rotation = Pos.transform.rotation;
			P.transform.position = Pos.transform.position;
			P.transform.localScale = Pos.transform.localScale;
			P.transform.parent = Pos.transform;
		}
	}

	void flattenChildren(GameObject prnt){
		for (int i = 0; i < prnt.transform.childCount; i++) {
			GameObject kid = prnt.transform.GetChild(i).gameObject;
			if(kid.transform.childCount==0){
				GameObject t = Instantiate(thing)as GameObject;
				t.transform.position = kid.transform.position;
				t.transform.Translate(0,0,i*5);
				t.transform.rotation = kid.transform.rotation;
//				t.transform.localScale = prnt.transform.localScale;
				t.transform.Rotate (0,180,0);
				t.isStatic = true;
			}
			else
				flattenChildren (kid);
//			kid.transform.parent = Root.transform;

		}
	}
	// Update is called once per frame
	void Update () {
	
	}
}
