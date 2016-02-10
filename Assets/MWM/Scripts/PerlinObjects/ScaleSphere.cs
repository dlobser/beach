using UnityEngine;
using System.Collections;

public class ScaleSphere : GenericPerlinObject
{

    protected override void perlinUpdate()
    {
        //updateVars()
        base.perlinUpdate();

        float ftime = Time.time * _freq;
        float timex = ftime;
        float timey = ftime;
        float timez = ftime;

        float sp;
        if (aud) sp = aud.GetBands(bands);
        else sp = 1f;

        for (int i = 0; i < _verts.Length; i++)
        {
            Vector3 v = _originalVerts[i];

            //v.x += _vol * _amp * noise.Noise(timex + v.x, timex + v.y, timex + v.z) * scale;
            //v.y += _vol * _amp * noise.Noise(timey + v.x, timey + v.y, timey + v.z) * scale;
            //v.z += _vol * _amp * noise.Noise(timez + v.x, timez + v.y, timez + v.z) * scale;

            v += v *sp * audioFactor;

            _verts[i] = v;
        }
        _mesh.vertices = _verts;
        if (recalculateNormals) _mesh.RecalculateNormals();
    }
}
