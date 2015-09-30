﻿using UnityEngine;
using System.Collections;

public class PerlinPlane : GenericPerlinObject {

	
	// Update is called once per frame
	protected override void perlinUpdate() {
        //updateVars()
        base.perlinUpdate();

        float sp;
        if (aud) sp = aud.GetBands(bands);
        else sp = 1f;
        //Debug.Log(sp);
        for (int i = 0; i < _verts.Length; i++)
        {
            //GRAB VERT
            Vector3 v = _originalVerts[i];

            //CYCLE CONSTANTLY BY SINE, USING NOISE FOR OSCILLATION
            float h1 = _amp * Mathf.Sin(2*Mathf.PI*Time.time * _freq + noiseFactor * noise.Noise(v.x/5f, v.z/5f));
            h1 = h1 * sp*audioFactor;

            h1 *= _vol;

            v = new Vector3(v.x, h1, v.z);

            //PUT BACK VERT
            _verts[i] = v;
        }

        _mesh.vertices = _verts;
        if (recalculateNormals) _mesh.RecalculateNormals();
	}
}
