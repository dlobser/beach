using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace exp3{
	public class missionCtrlCharacters : MonoBehaviour {


		private List<GameObject> hands;
		private List<GameObject> heads;

		public Vector3[] handsVectors = new Vector3[4];

		public float[] headInfo = new float[4];
		
		private List<float> randoms;
		

		
		// Use this for initialization
		void Start () {

			
			hands = new List<GameObject>();
			heads = new List<GameObject>();
			
			Search (gameObject, "handCtrl", hands);
			Search (gameObject, "neck", heads);

			
			randoms = new List<float>();
			for (int i = 0; i < hands.Count*6; i++) {
				randoms.Add(Random.Range (1f, 3f));
			}

			makeNoise (hands, handsVectors [0], handsVectors [1], handsVectors [2], handsVectors [3]);
			makeWave (heads, headInfo [0], headInfo [1], headInfo [2], headInfo [3]);
			
	//		makeWave (leftUpperArms,  LeftUpperArmUpperBound,LeftUpperArmLowerBound,LeftUpperArmSpeed,0);
	//		makeWave (leftLowerArms,  LeftLowerArmUpperBound,LeftLowerArmLowerBound,LeftLowerArmSpeed,1);
	//		makeWave (rightUpperArms, RightUpperArmUpperBound,RightUpperArmLowerBound,RightUpperArmSpeed,0);
	//		makeWave (rightLowerArms, RightLowerArmUpperBound,RightLowerArmLowerBound,RightLowerArmSpeed,1);
		}
		
		// Update is called once per frame
//		void Update () {
//			foreach (GameObject a in aims) {
//				Vector3 pos = Camera.main.transform.position;
//				a.transform.LookAt (new Vector3(pos.x,a.transform.position.y,pos.z));
//				
//			}
//		}

		void makeNoise(List<GameObject> L, Vector3 upper, Vector3 lower, Vector3 speed, Vector3 offset){
			for (int i = 0; i < L.Count; i++) {
				TransformUniversal t = L[i].AddComponent<TransformUniversal>();
				t.doTranslateNoise = true;
				t.translateNoiseUpperBounds = upper;
				t.translateNoiseLowerBounds = lower;
				t.translateNoiseSpeed = speed;
				t.translateNoiseOffset = offset*Random.Range(0f,10f);
				
			}
		}
		
		void makeWave(List<GameObject> L, float upper, float lower, float speed, float offset){
			for (int i = 0; i < L.Count; i++) {
				TransformUniversal t = L[i].AddComponent<TransformUniversal>();
				t.doRotateNoise = true;
				t.rotateNoiseUpperBounds = new Vector3(0,0,upper);
				t.rotateNoiseLowerBounds = new Vector3(0,0,lower);
				t.rotateNoiseSpeed = new Vector3(0,0,speed*randoms[i]);
				
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
}
