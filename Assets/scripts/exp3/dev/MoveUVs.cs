using UnityEngine;
using System.Collections;
namespace exp3
{

    public class MoveUVs : Interactable
    {

        public Vector2 uvOffset = new Vector2(0.5f, 0f);

        private bool _set = false;
        private Mesh[] _meshes;


        void Start()
        {
            //populate meshes
            MeshFilter[] filters = GetComponentsInChildren<MeshFilter>();
            _meshes = new Mesh[filters.Length];
            for (int i = 0; i < _meshes.Length; i++)
            {
                _meshes[i] = filters[i].mesh;
            }
        }

        void Update()
        {
            if (interacting && !_set)
            {
                this.SetUVs(1);
            }
            else if (!interacting && _set)
            {
                this.SetUVs(0);
                this._set = false;
            }
        }

        void SetUVs(int ind)
        {
            if (ind == 0)
            {
                //reset to original UVs
                for (int i = 0; i < _meshes.Length; i++)
                {
                    //Debug.Log(_meshes[i] + " " + _meshes[i].uv);
                    Vector2[] uvs = _meshes[i].uv;
                    for (int j = 0; j < uvs.Length; j++)
                    {
                        uvs[j] -= uvOffset;
                    }
                    _meshes[i].uv = uvs;
                }
            }
            else
            {
                //set to moved UVs
                for (int i = 0; i < _meshes.Length; i++)
                {
                    //Debug.Log(_meshes[i] + " " + _meshes[i].uv);
                    Vector2[] uvs = _meshes[i].uv;
                    for (int j = 0; j < uvs.Length; j++)
                    {
                        uvs[j] += uvOffset;
                    }
                    _meshes[i].uv = uvs;
                }
            }
            _set = true;
        }
    }
}