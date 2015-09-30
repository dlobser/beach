using UnityEngine;
using System.Collections;
using System.Collections.Generic;
namespace exp3 
{

    //Start/End Vec2s
    //Transition Options
    //PingPong
    //Oscillate
    //OscillateTimer



    public class ColorTransition : MonoBehaviour {

        public float changeSpeed = 1f;
        public bool oscillate = false;
        public bool pause = false;

        public ColorState state = ColorState.SOLID;
        public string color = "red";
        public Dictionary<string, Vector2> colors = new Dictionary<string, Vector2>()
        {
            {"red", new Vector2(0.05f, 0.85f)},
            {"green", new Vector2(0.15f, 0.85f)},
            {"blue", new Vector2(0.25f, 0.85f)},
        };
        Mesh _mesh;

	    // Use this for initialization
	    void Start () {
            _mesh = this.GetComponent<MeshFilter>().mesh;
            Vector2[] uvs = new Vector2[4];
            uvs[0] = new Vector2(0f, 1f);
            uvs[1] = new Vector2(0f, 1f);
            uvs[2] = new Vector2(0f, 1f);
            uvs[3] = new Vector2(0f, 1f);

            _mesh.uv = uvs;
	    }
	
	    // Update is called once per frame
	    void Update () {
            if (state.Equals(ColorState.SOLID)) {

                Vector2[] uvs = _mesh.uv;
                for (int i = 0; i < uvs.Length; i++)
                {
                    Vector2 v;
                    if (colors.TryGetValue(color, out v))
                        uvs[i] = v;
                }
                _mesh.uv = uvs;
            } 
            else if (state.Equals(ColorState.GRADIENT)) 
            {
                Vector2[] uvs = _mesh.uv;
                for (int i = 0; i < uvs.Length; i++)
                {
                    uvs[i].x =  (uvs[i].x + (Time.deltaTime * changeSpeed)) % 1f;
                }
                Debug.Log(uvs[0]);
                _mesh.uv = uvs;
            }
            
	    }


        public enum ColorState
        {
            SOLID,TRANSPARENT,GRADIENT
        }
    }
}