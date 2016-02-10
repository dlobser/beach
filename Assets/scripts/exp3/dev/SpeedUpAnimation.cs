using UnityEngine;
using System.Collections;

namespace exp3
{
    public class SpeedUpAnimation : Interactable
    {

        public float animationSpeed = 2f;
        public TransformUniversal[] _universals;

        private bool _set = false;

        void Start()
        {
            _universals = this.GetComponentsInChildren<TransformUniversal>();
        }

        void Update()
        {
            if (interacting && !_set)
            {
                this.setSpeeds(animationSpeed);
                this.interacting = false;
            }
            else
            {
                this.setSpeeds(1f);
                this._set = false;
            }
        }

        public void setSpeeds(float f)
        {
            for (int i = 0; i < _universals.Length; i++)
            {
                _universals[i].globalTimeScale = f;
            }
            _set = true;
        }
    }
}