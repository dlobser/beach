using UnityEngine;
using System.Collections;

namespace exp3 {
    public class RailsButton : Interactable
    {

        private RailsController _railsController;
        private Mesh _mesh;
        private Vector2[] originalUVs;
        private Vector2[] finalUVs;

        public Vector2 secondColorOffset = Vector2.zero;
        public Vector2 thirdColorOffset = Vector2.zero;
        public Vector2 finalColorOffset = Vector2.zero;

        private Vector2 secondToThird;
        public float pressTime = 2f;
        private float timer = 0;

        public int nextNodeInt = 0;

        void Start()
        {
            _railsController = GameObject.FindObjectOfType<RailsController>();
            _mesh = this.GetComponent<MeshFilter>().mesh;

            originalUVs = _mesh.uv;
            finalUVs = new Vector2[originalUVs.Length];

            for (int i = 0; i < finalUVs.Length; i++)
            {
                finalUVs[i] = originalUVs[i] + finalColorOffset;
            }

            secondToThird = thirdColorOffset - secondColorOffset;
        }


        void Update()
        {
            if (_railsController.pressable)
            {
                if (interacting)
                {
                    timer += Time.deltaTime;
                    if (timer > pressTime)
                    {
                        Debug.Log("Button Pressed");
                        _railsController.GoToNext(nextNodeInt);
						timer=0;
                    }

                    Vector2[] uvs = (Vector2[])originalUVs.Clone();

                    for (int i = 0; i < uvs.Length; i++)
                    {
                        uvs[i] += secondColorOffset + ((timer / pressTime) * secondToThird);
                    }
                    _mesh.uv = uvs;
                }
                else
                {
                    _mesh.uv = originalUVs;
                    timer = 0;
                }
            }
            else
            {
                _mesh.uv = finalUVs;
                timer = 0;
            }
        }
    }
}

