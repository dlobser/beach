using UnityEngine;
using System.Collections;
//namespace exp3
//{
    public class InteractionController : MonoBehaviour
    {

        public float interactionRange = 10f;


        private Ray _ray;
        private RaycastHit _hit;

        private Interactable _interactableObject;
        public bool interacting;

        void Start()
        {

        }

        void Update()
        {
            _ray = new Ray(transform.position, transform.forward);
            if (Physics.Raycast(_ray, out _hit, interactionRange))
            {
                Interactable i = _hit.transform.GetComponent<Interactable>();
                if (i)
                {
                    if (_interactableObject != null && !i.Equals(_interactableObject))
                    {
                        _interactableObject.interacting = false;
                        this.interacting = false;
                    }

                    _interactableObject = _hit.transform.GetComponent<Interactable>();
                    this.interacting = true;
                    _interactableObject.interacting = true;
                    _interactableObject.interactPosition = _hit.point;
                }
            }
            else if (_interactableObject)
            {
                _interactableObject.interacting = false;
                this.interacting = false;
                _interactableObject = null;
            }
        }

        void OnDrawGizmos()
        {
            Gizmos.color = Color.red;

            Gizmos.DrawRay(_ray.origin, _ray.direction * interactionRange);
        }
    }
//}