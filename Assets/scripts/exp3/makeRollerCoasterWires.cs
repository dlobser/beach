using UnityEngine;
using System.Collections;

namespace exp3{
	public class makeRollerCoasterWires : MonoBehaviour {

		public GameObject[] anchorPoints = new GameObject[8];
		LineRenderer LR;
		public bool animate;
		// Use this for initialization
		void Start () {
			LR = GetComponent<LineRenderer> ();
			LR.SetPosition (0, anchorPoints [0].transform.position);
			LR.SetPosition (1, anchorPoints [1].transform.position);
			LR.SetPosition (2, anchorPoints [0].transform.position);
			LR.SetPosition (3, anchorPoints [2].transform.position);
			LR.SetPosition (4, anchorPoints [0].transform.position);
			LR.SetPosition (5, anchorPoints [3].transform.position);
			LR.SetPosition (6, anchorPoints [0].transform.position);
			LR.SetPosition (7, anchorPoints [4].transform.position);
			LR.SetPosition (8, anchorPoints [5].transform.position);
			LR.SetPosition (9, anchorPoints [4].transform.position);
			LR.SetPosition (10, anchorPoints [6].transform.position);
			LR.SetPosition (11, anchorPoints [4].transform.position);
			LR.SetPosition (12, anchorPoints [7].transform.position);
			LR.SetPosition (13, anchorPoints [4].transform.position);
		}
		
		// Update is called once per frame
		void Update () {
			if (animate)
				animateLines ();
		}

		void animateLines(){
			LR.SetPosition (0, anchorPoints [0].transform.position);
			LR.SetPosition (1, anchorPoints [1].transform.position);
			LR.SetPosition (2, anchorPoints [0].transform.position);
			LR.SetPosition (3, anchorPoints [2].transform.position);
			LR.SetPosition (4, anchorPoints [0].transform.position);
			LR.SetPosition (5, anchorPoints [3].transform.position);
			LR.SetPosition (6, anchorPoints [0].transform.position);
			LR.SetPosition (7, anchorPoints [4].transform.position);
			LR.SetPosition (8, anchorPoints [5].transform.position);
			LR.SetPosition (9, anchorPoints [4].transform.position);
			LR.SetPosition (10, anchorPoints [6].transform.position);
			LR.SetPosition (11, anchorPoints [4].transform.position);
			LR.SetPosition (12, anchorPoints [7].transform.position);
			LR.SetPosition (13, anchorPoints [4].transform.position);
		}
	}
}