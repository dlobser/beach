using UnityEngine;
using System.Collections;

namespace exp3{
	public class activators : MonoBehaviour {

		public GameObject[] activate;
		public GameObject[] deactivate;

		public void Activated(){
			foreach (GameObject g in deactivate)
				if(g!=null)
					g.SetActive (false);

		}

		public void DeActivated(){
			foreach (GameObject g in activate)
				if(g!=null)
					g.SetActive (true);
		}
	}
}