using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class characterCrowdWave : MonoBehaviour {

	private List<GameObject> leftUpperArms;
	private List<GameObject> leftLowerArms;

	private List<GameObject> rightUpperArms;
	private List<GameObject> rightLowerArms;

	private List<GameObject> aims;

	private List<float> randoms;

	public float LeftUpperArmUpperBound = -150;
	public float LeftUpperArmLowerBound = -100;
	public float LeftUpperArmSpeed = 5f;

	public float LeftLowerArmUpperBound = -150;
	public float LeftLowerArmLowerBound = -100;
	public float LeftLowerArmSpeed = 5f;

	public float RightUpperArmUpperBound = -150;
	public float RightUpperArmLowerBound = -100;
	public float RightUpperArmSpeed = 5f;
	
	public float RightLowerArmUpperBound = -150;
	public float RightLowerArmLowerBound = -100;
	public float RightLowerArmSpeed = 5f;

	// Use this for initialization
	void Start () {
		leftUpperArms = new List<GameObject>();
		leftLowerArms = new List<GameObject>();

		rightUpperArms = new List<GameObject>();
		rightLowerArms = new List<GameObject>();

		aims = new List<GameObject>();

		Search (gameObject, "LeftArm", leftUpperArms);
		Search (gameObject, "RightArm", rightUpperArms);
		Search (gameObject, "LeftForeArm", leftLowerArms);
		Search (gameObject, "RightForeArm", rightLowerArms);
		Search (gameObject, "Aim", aims);

		randoms = new List<float>();
		for (int i = 0; i < leftUpperArms.Count*6; i++) {
			randoms.Add(Random.Range (1f, 3f));
		}

		makeWave (leftUpperArms,  LeftUpperArmUpperBound,LeftUpperArmLowerBound,LeftUpperArmSpeed,0);
		makeWave (leftLowerArms,  LeftLowerArmUpperBound,LeftLowerArmLowerBound,LeftLowerArmSpeed,1);
		makeWave (rightUpperArms, RightUpperArmUpperBound,RightUpperArmLowerBound,RightUpperArmSpeed,0);
		makeWave (rightLowerArms, RightLowerArmUpperBound,RightLowerArmLowerBound,RightLowerArmSpeed,1);
	}
	
	// Update is called once per frame
	void Update () {
		foreach (GameObject a in aims) {
			Vector3 pos = Camera.main.transform.position;
			a.transform.LookAt (new Vector3(pos.x,a.transform.position.y,pos.z));

		}
	}

	void makeWave(List<GameObject> L, float upper, float lower, float speed, float offset){
		for (int i = 0; i < L.Count; i++) {
			TransformUniversal t = L[i].AddComponent<TransformUniversal>();
			t.doRotateOscillate = true;
			t.rotateOscillateUpperBounds = new Vector3(0,upper,0);
			t.rotateOscillateLowerBounds = new Vector3(0,lower,0);
			t.rotateOscillateSpeed = new Vector3(0,speed*randoms[i],0);

		}
	}

	public void Search(GameObject target, string name, List<GameObject> L)
	{
		if (target.name.Contains (name)) {
			L.Add(target);

		}

		if (target.transform.childCount > 0) {
			for (int i = 0; i < target.transform.childCount; ++i) {
				Search (target.transform.GetChild (i).gameObject, name, L);

			}
		}
		else
			return;
	}
}
