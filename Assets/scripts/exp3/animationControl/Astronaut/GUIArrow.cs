using UnityEngine;
using System.Collections;
namespace exp3
{
    public class GUIArrow : MonoBehaviour
    {

        public Transform target;
        public Camera cam;
        public float fadeSpeed = 5f;
        public float fadeDistance = 0.5f;

        public bool activated = true;

        private Vector3 targetPos;
        private Vector3 centerScreen;

        CanvasRenderer _renderer;

        // Use this for initialization
        void Start()
        {
            _renderer = GetComponent<CanvasRenderer>();
        }

        // Update is called once per frame
        void Update()
        {

            if (activated)
            {
                Vector3 v3Pos = cam.WorldToViewportPoint(target.transform.position);

                v3Pos.x -= 0.5f;
                v3Pos.y -= 0.5f;
                v3Pos.z = 0;

                if (Vector3.Distance(Vector3.zero, v3Pos) < fadeDistance)
                {
                    _renderer.SetColor(Color.Lerp(_renderer.GetColor(), Color.clear, Time.deltaTime * fadeSpeed));

                    Color c = _renderer.GetColor();

                    if (c.a < 0.1f)
                    {
                        activated = false;
                        _renderer.SetColor(Color.clear);
                    }


                }
                else
                {
                    _renderer.SetColor(Color.Lerp(_renderer.GetColor(), Color.white, Time.deltaTime * fadeSpeed));
                }

                float angle = Mathf.Atan2(v3Pos.x, v3Pos.y);

                transform.localEulerAngles = new Vector3(0f, 0f, -angle * Mathf.Rad2Deg);
            }
            else
            {
                _renderer.SetColor(Color.Lerp(_renderer.GetColor(), Color.clear, Time.deltaTime * fadeSpeed));
            }
        }

        public void Activate()
        {
            this.activated = true;
        }

        public void Deactivate()
        {
            this.activated = false;
        }
    }

}
