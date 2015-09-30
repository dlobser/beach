using UnityEngine;
using System.Collections;
namespace exp3
{

    public class ScalingReticle : MonoBehaviour
    {

        private InteractionController _interactionController;

        public float scaleInSpeed = 1f;
        public float scaleOutSpeed = 1f;
        public bool lerp = true;

        private Vector3 _originalScale;

        void Start()
        {
            _interactionController = GameObject.FindObjectOfType<InteractionController>();
            _originalScale = this.transform.localScale;
            this.transform.localScale = Vector3.zero;
        }


        void Update()
        {
            if (lerp)
            {
                if (_interactionController.interacting)
                {
                    this.transform.localScale = Vector3.Lerp(this.transform.localScale, _originalScale, Time.deltaTime * scaleInSpeed);
                }
                else
                {
                    this.transform.localScale = Vector3.Lerp(this.transform.localScale, Vector3.zero, Time.deltaTime * scaleOutSpeed);
                }
            }
            else
            {
                if (_interactionController.interacting)
                {
                    this.transform.localScale = Vector3.MoveTowards(this.transform.localScale, _originalScale, Time.deltaTime * scaleInSpeed);
                }
                else
                {
                    this.transform.localScale = Vector3.MoveTowards(this.transform.localScale, Vector3.zero, Time.deltaTime * scaleOutSpeed);
                }
            }
        }

    }
}