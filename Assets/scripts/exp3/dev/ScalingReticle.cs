using UnityEngine;
using System.Collections;


    public class ScalingReticle : MonoBehaviour
    {

        private InteractionController _interactionController;

        public static float scaleInSpeed = 2f;
        public static float scaleOutSpeed = 1f;
        public bool lerp = true;
		public static bool targeting = false;

        private static Vector3 _originalScale;

		public static GameObject t ;//= this;

        void Start()
        {
//            _interactionController = GameObject.FindObjectOfType<InteractionController>();
//		t = transform.gameObject;
		t = GetComponent<Transform> ().gameObject;

		_originalScale = t.transform.localScale;
            t.transform.localScale = Vector3.zero;

        }

		public static void trueTarget(){
		t.transform.localScale = Vector3.Lerp(t.transform.localScale, _originalScale, Time.deltaTime * scaleInSpeed);
	}
		public static void falseTarget(){
//		print (t);
		t.transform.localScale = Vector3.Lerp(t.transform.localScale, Vector3.zero, Time.deltaTime * scaleOutSpeed);
	}
        void Update()
        {

//			print (targeting);
//            if (lerp)
//            {
//                if (targeting)
//                {
//                    this.transform.localScale = Vector3.Lerp(this.transform.localScale, _originalScale, Time.deltaTime * scaleInSpeed);
//                }
//                else
//                {
//                    this.transform.localScale = Vector3.Lerp(this.transform.localScale, Vector3.zero, Time.deltaTime * scaleOutSpeed);
//                }
//            }
//            else
//            {
//                if (targeting)
//                {
//                    this.transform.localScale = Vector3.MoveTowards(this.transform.localScale, _originalScale, Time.deltaTime * scaleInSpeed);
//                }
//                else
//                {
//                    this.transform.localScale = Vector3.MoveTowards(this.transform.localScale, Vector3.zero, Time.deltaTime * scaleOutSpeed);
//                }
//            }
        }

    }
