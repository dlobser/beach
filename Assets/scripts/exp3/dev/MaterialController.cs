using UnityEngine;
using System.Collections;
namespace exp3
{
    public class MaterialController : MonoBehaviour
    {

        //COMPONENTS
        private Renderer _renderer;

        //MATERIAL VARS;
        public Material[] materials = new Material[0];
        //private Material _originalMaterial;

        void Start()
        {
            this._renderer = this.GetComponent<Renderer>();

            //Setting up MaterialState
            //this._originalMaterial = this._renderer.material;

        }

        public void SetMaterial(int i)
        {
            if (i > materials.Length || i < 0)
            {
                Debug.Log("WARNING: material index # requested not 0 or in array. Switching to original material.");
                //this.SetMaterial(_originalMaterial);
            }
            else
            {
                if (i == 0)
                {
                    //this.SetMaterial(_originalMaterial);
                }
                else
                {
                    this.SetMaterial(materials[i - 1]);
                }
            }
        }

        public void SetMaterial(Material m)
        {
            Debug.Log("setting material");
            this._renderer.material = m;
        }
    }
}