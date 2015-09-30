using UnityEngine;
using System.Collections;
using DG.Tweening;

namespace exp3{
	public class elevatorControl : MonoBehaviour {


		public GameObject wayPoints;
		public GameObject astronaut;
		public GameObject astronautRotator;
		public GameObject rollerCoasterMover;
		public GameObject POD;
		public GameObject Rocket;

		public bool enableDeactivator = true;

		public float timer = 10;
		private float timerCounter = 0;

		public GameObject[,] activators;

//		public GameObject door1;
//		public GameObject door2;

		private bool rotateRocket;
		Animator rocketAnim;
		private float rocketClimb=-1;
		public float speed;
		public int skip;
		private bool animatingAlongTrack;
		private Vector3[] points;
		private int which;
		AudioSource aud;
		Tween go;
		private float volume = 0;
		private float thisSpeed;
		bool first = true;
		Animator rAnim;
		private bool button = false;


		void Start()
		{

			which = skip;
			rAnim = rollerCoasterMover.GetComponent<Animator> ();
			rocketAnim = Rocket.GetComponent<Animator> ();
			aud = GetComponent<AudioSource> ();
			aud.volume = 0;
			points = new Vector3[wayPoints.transform.childCount];
			for (int i = 0; i < points.Length; i++) {
				points[i] = wayPoints.transform.GetChild(i).transform.position;
			}
			GoToNext();
			which++;
			
		}

		void Update(){
			if (go != null) {
				if(go.IsPlaying()&&!aud.isPlaying)
					aud.Play();
				else if(!go.IsPlaying()&&aud.isPlaying){
					if(aud.volume>0)
						aud.volume-=.02f;
					else
						aud.Stop();
				}
				else if(go.IsPlaying()&&aud.isPlaying)
				{
					if(aud.volume<.5)
						aud.volume+=.01f;
				}
			}

			if (!go.IsPlaying() && Input.GetButtonUp ("Fire1"))
				buttonDown ();

			if(!go.IsPlaying() && button){
				if(wayPoints.transform.GetChild(which).gameObject.name=="tripToRocket"){ 
					activateActivators();
					rAnim.SetBool ("roll", true);
				}
				else
					GoToNext();
				which++;
				if(which>points.Length-1){
					which=0;
					Application.LoadLevel(0);
				}
				buttonUp();
			}

			if (!go.IsPlaying ()&&which<points.Length-3)
				timerCounter += Time.deltaTime;
			if (timerCounter > timer)
				buttonDown ();

			if (which > 1) {
				if (wayPoints.transform.GetChild (which - 1).gameObject.name == "tripToRocket") {
					astronaut.transform.position = rollerCoasterMover.transform.GetChild (0).transform.position;
					astronaut.transform.rotation = rollerCoasterMover.transform.GetChild (0).transform.rotation;
				}
			}

			if (rotateRocket) {
				if(rocketClimb<1&&rocketClimb>0)
					Rocket.transform.parent.gameObject.GetComponent<TransformUniversal>().globalTimeScale=rocketClimb;
				else if(rocketClimb>1)
					rotateRocket=false;
				rocketClimb+=.1f*Time.deltaTime;
//				print (rocketClimb);
			}
		}
//
//		void openDoors(){
//			door1.transform.DORotate(new Vector3(, 1).SetEase(Ease.InOutSine);
//		}

		void moveAlongTracks(){
			rAnim.SetBool ("roll", true);
		}

		void buttonDown(){
			button = true;
		}

		void buttonUp(){
			button = false;
			timerCounter = 0;

		}

		void activateActivators(){
			if (enableDeactivator) {
				activators a = wayPoints.transform.GetChild (which).GetComponent<activators> ();
				if (a != null) {
					a.Activated ();
					a.DeActivated ();
				}
			}
		}

		void GoToNext(){
	//		print (which);
			activateActivators ();
			if(which>2)
				thisSpeed = Vector3.Distance(transform.position,points[which])*speed;
			else
				thisSpeed = Vector3.Distance (astronaut.transform.position, points [which]) * speed;
			if (which == 0) {
				thisSpeed = 0;
				transform.DOMove(points[2], 0).SetEase(Ease.InOutSine);
			}
			if(which>2&&which<points.Length-4)
				go = transform.DOMove(points[which], thisSpeed).SetEase(Ease.InOutSine);
			else if (which == points.Length - 2) {
				astronaut.transform.parent = POD.transform;
				rocketAnim.SetBool("blastOff",true);

				CopyRotation cp = astronautRotator.GetComponent<CopyRotation>();
				cp.bounds = new Vector3(30,0,0);
				cp.minBounds = new Vector3(0,25,0);
				cp.y = true;

				rotateRocket = true;
				Rocket.transform.parent.gameObject.GetComponent<TransformUniversal>().enabled = true;
				go = astronaut.transform.DOMove(points[which], 1).SetEase(Ease.InOutSine);
				Vector3 rot = wayPoints.transform.GetChild(which).transform.localEulerAngles;
				astronaut.transform.DORotate(rot, 1).SetEase(Ease.InOutSine);
			}
			else
				go = astronaut.transform.DOMove(points[which], thisSpeed).SetEase(Ease.InOutSine);

	//		print (thisSpeed);
		}
	}
}