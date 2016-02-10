using UnityEngine;
using System.Collections;
namespace exp3
{

    public class ChangeMaterial : Interactable
    {

        private bool _set = false;
        MaterialController[] _matControllers;
        public Material newMat;

        void Start()
        {
            _matControllers = GetComponentsInChildren<MaterialController>();
        }

        void Update()
        {
            if (interacting & !_set)
            {
                this.SetMaterials(1);
                this.interacting = false;
            }
            else
            {
                this.SetMaterials(0);
                this.interacting = false;
                this._set = false;
            }
        }

        void SetMaterials(int ind)
        {
            for (int i = 0; i < _matControllers.Length; i++)
            {
                if (ind == 0)
                {
                    _matControllers[i].SetMaterial(0);
                }
                else
                {
                    _matControllers[i].SetMaterial(newMat);
                }
            }
        }
    }
}