using UnityEngine;
using System.Collections;

namespace exp3{
	public class altitudeDeactivator : MonoBehaviour {

		public GameObject[] deactivate;
		public GameObject[] activate;
		public GameObject trigger;

		public float altitude;
		public bool Above = true;

		private bool triggered = false;

		// Use this for initialization
		void Start () {
		
		}
		
		// Update is called once per frame
		void Update () {
			if (!triggered) {
				if (trigger.transform.position.y > altitude && Above) {
					Activate ();
					Deactivate ();
					triggered = true;

				} else if (trigger.transform.position.y < altitude && !Above) {
					Activate ();
					Deactivate ();
					triggered = true;
				}
			}
		}

		void Deactivate(){
			for (int i = 0; i < deactivate.Length; i++) {
				deactivate[i].SetActive(false);
			}
		}
		void Activate(){
			for (int i = 0; i < activate.Length; i++) {
				activate[i].SetActive(true);
			}
		}

	}
}