using UnityEngine;
using System.Collections;
    
public class PerlinSphere : MonoBehaviour {

    public AudioManager _aud;
    public  float frequency;
    public float amplitude;
    private float _freq;
    private float _amp;
    private float _vol;
    private bool useAudio;

    private Mesh _mesh;
    private Vector3[] _meshVerts;
    private Vector3[] verts;

    private Perlin noise;

	// Use this for initialization
	void Start () {
        _mesh = GetComponent<MeshFilter>().mesh;
        _meshVerts = _mesh.vertices;
        verts = new Vector3[_meshVerts.Length];
        if (_aud) useAudio = true;
        noise = new Perlin();
	}
	
	// Update is called once per frame
	void Update () {


        if (useAudio)
        {
            _freq = (_aud.bpm / 60f) * frequency;
            _amp = amplitude;
            _vol = _aud.volume;
        }
        else
        {
            _freq = frequency;
            _amp = amplitude;
            _vol = 1f;
        }

        float timex = Time.time * _freq;// +0.1365143f;
        float timey = Time.time * _freq;// +1.121688f;
        float timez = Time.time * _freq;// +2.5564f;

        float sp = _aud.GetBands(6);

        for (int i = 0; i < verts.Length; i++)
        {
            verts[i] = _meshVerts[i];

            verts[i].x += _vol * _amp * noise.Noise(timex + verts[i].x, timex + verts[i].y, timex + verts[i].z) * transform.localScale.x * sp*5f;
            verts[i].y += _vol * _amp * noise.Noise(timey + verts[i].x, timey + verts[i].y, timey + verts[i].z) * transform.localScale.y * sp*5f;
            verts[i].z += _vol * _amp * noise.Noise(timez + verts[i].x, timez + verts[i].y, timez + verts[i].z) * transform.localScale.z * sp*5f;

            //verts[i] *= sp;
        }

        _mesh.vertices = verts;
        _mesh.RecalculateNormals();
	}
}
