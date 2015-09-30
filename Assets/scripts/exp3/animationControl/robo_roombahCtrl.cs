using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3{
	public class robo_roombahCtrl : MonoBehaviour {

		public Vector3 upperBounds;
		public Vector3 lowerBounds;
		public Vector3 center;
		public float speed;
		private GameObject aimer;
		private Tween rotating;
		private float moveCounter = 1;
		public float far = 5;

		// Use this for initialization
		void Start () {
			aimer = new GameObject ();

		}
		
		// Update is called once per frame
		void Update () {
//			print (moveCounter);
//			if (rotating != null)
//				print (rotating.IsPlaying ());
			if (moveCounter<0&&checkBound (transform.position)) {
				if(rotating==null||!rotating.IsPlaying()){
					rotating = transform.DORotate (newLook (transform.position),4f,RotateMode.Fast);
					moveCounter=1;
				}
			}
			if (rotating == null || !rotating.IsPlaying ()) {
				transform.Translate (Vector3.forward * speed * Time.deltaTime);
				moveCounter-=Time.deltaTime;
				
			}

		}

		bool checkBound(Vector3 p){

			bool bound = false;

			if (Vector3.Distance (p, center) > far)
				bound = true;

			if (bound)
				return true;
			else
				return false;

		}

		Vector3 newLook(Vector3 p){
			aimer.transform.position = p;
			aimer.transform.LookAt (center);
			Vector3 angle = aimer.transform.localEulerAngles;
			return Vector3.Scale(angle,new Vector3(0,1,1))+new Vector3(0,Random.Range(-30,30),0);
		}
	}
}