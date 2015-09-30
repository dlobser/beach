using UnityEngine;
using System.Collections;
namespace exp3
{
    public class ColorTextureController : MonoBehaviour
    {

        public Vector2 startPosition = new Vector2(0f, 1f);
        private float halfDistance;
        public Vector2 endPosition = new Vector2(0.9f, 1f);
        public bool retainShape = false;

        public float speed = 0.5f;

        public Vector2 scrollDirection = new Vector2(1f, 0f);
        public bool snap;
        public MoveType type;

        private Vector2 currentPosition;

        private Mesh _mesh;
        private Vector2[] originalUVs;
        private Vector2[] snapEndUVs;

        public WaveType wave = WaveType.SINE;
        private Vector2 _direction;

        public Vector2 numSteps = new Vector2(2f,0f);

        private float timer;
        private int counter;
        private float yOffset;
        private int xCounter;
        private int yCounter;

        void Start()
        {
            _mesh = this.GetComponent<MeshFilter>().mesh;

            Vector2[] uvs = _mesh.uv;
            originalUVs = _mesh.uv;

            if (!retainShape)
            {
                for (int i = 0; i < uvs.Length; i++)
                {
                    uvs[i] = startPosition;
                    originalUVs[i] = startPosition;
                }
                _mesh.uv = originalUVs;
            }

			else if (retainShape)
			{
				for (int i = 0; i < uvs.Length; i++)
				{
					uvs[i] += startPosition;
					originalUVs[i] += startPosition;
				}
				_mesh.uv = originalUVs;
			}


            Vector2 dir = endPosition - startPosition;
            for (int i = 0; i < uvs.Length; i++)
            {
                uvs[i] += dir;
            }
            snapEndUVs = uvs;

            currentPosition = startPosition;
            halfDistance = Vector2.Distance(startPosition, endPosition) / 2f;

            _direction = (endPosition - startPosition);
        }

        void Update()
        {
           // UpdateVars();
            HandleTypes();
        }

        void UpdateVars()
        {
            _direction = (endPosition - startPosition);
        }

        void HandleTypes()
        {
            switch (type)
            {
                case MoveType.STICK:
                    this.OnStick();
                    break;
                case MoveType.OSCILLATE:
                    this.OnOscillate();
                    break;
                case MoveType.SCROLL:
                    this.OnScroll();
                    break;
            }
        }

        void OnStick() 
        {
            if (retainShape)
            {
                Vector2[] uvs = _mesh.uv;

                for (int i = 0; i < uvs.Length; i++)
                {
                    uvs[i] += startPosition;
                }
                _mesh.uv = uvs;
            }
            else
            {
                Vector2[] uvs = _mesh.uv;

                for (int i = 0; i < uvs.Length; i++)
                {
                    uvs[i] = startPosition;
                }

                _mesh.uv = uvs;
            }
        }

        void OnOscillate()
        {
            currentPosition = startPosition + _direction * (Mathf.Sin(2f * Mathf.PI * Time.time * speed) * (0.5f) + 0.5f);

            if (wave.Equals(WaveType.SINE))
            {
                Vector2 dir = currentPosition - startPosition;

                Vector2[] uvs = (Vector2[])originalUVs.Clone();
                for (int i = 0; i < uvs.Length; i++)
                {
                    uvs[i] += dir;
                }

                _mesh.uv = uvs;
            }
            else if (wave.Equals(WaveType.SQUARE))
            {
                if (halfDistance > Vector2.Distance(currentPosition, startPosition))
                {
                    _mesh.uv = originalUVs;
                }
                else
                {
                    _mesh.uv = snapEndUVs;
                }
            }
            else if (wave.Equals(WaveType.STEP))
            {            
                Vector2 pos = startPosition + (_direction / (numSteps[0])) * Mathf.RoundToInt(numSteps[0] * (Mathf.PingPong(2f * Mathf.PI * Time.time * speed,1))); 
                
                Vector2 dir = pos - startPosition;

                Vector2[] uvs = (Vector2[])originalUVs.Clone();
                for (int i = 0; i < uvs.Length; i++)
                {
                    uvs[i] += dir;
                }
                _mesh.uv = uvs;
            }
            else if (wave.Equals(WaveType.TRIANGLE))
            {

                timer += Time.deltaTime;
                if (timer > speed)
                {
                    timer = 0;
                    counter++;
                    xCounter++;
                }

                if (counter > numSteps[0] + numSteps[1])
                {
                    counter = 0;
                }

//                Debug.Log(numSteps);

                if (xCounter > numSteps[0])
                {
                    xCounter = 0;
                    yCounter++;
                }

                if (yCounter > numSteps[1]) 
                {
                    yCounter = 0;
                }

                

                if (numSteps[1] == 0)
                {
                    Vector2 pos = (_direction / numSteps[0]) * counter;

                    Vector2[] uvs = (Vector2[])originalUVs.Clone();
                    for (int i = 0; i < uvs.Length; i++)
                    {
                        uvs[i] += pos;
                    }

                    _mesh.uv = uvs;
                }
                else
                {
                    Vector2 xDir = new Vector2(_direction.x / (numSteps[0]), 0f);
                    Vector2 yDir = new Vector2(0f, _direction.y /  (numSteps[1]));

//                    Debug.Log(xDir + " " + yDir + " " + xCounter + " " + yCounter);

                    Vector2[] uvs = (Vector2[])originalUVs.Clone();

                    for (int i = 0; i < uvs.Length; i++)
                    {
                        uvs[i] += xDir * xCounter;
                        uvs[i] += yDir * yCounter;
                    }
                    _mesh.uv = uvs;
                }
                

                
            }
        }

        void OnScroll()
        {
            Vector2[] uvs = _mesh.uv;

            for (int i = 0; i < uvs.Length; i++)
            {
                uvs[i] += Time.deltaTime * scrollDirection;
            }
            _mesh.uv = uvs;
        }

        public void Recalculate()
        {
            Start();
        }
    }

    public enum MoveType
    {
        STICK, OSCILLATE, SCROLL
    }

    public enum WaveType
    {
        SINE, SQUARE, STEP, TRIANGLE, RECT
    }
}