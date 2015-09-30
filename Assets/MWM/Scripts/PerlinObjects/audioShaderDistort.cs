using UnityEngine;
using System.Collections;

public class audioShaderDistort : GenericPerlinObject {

	Renderer ren;
	void Start(){
		ren = GetComponent<Renderer> ();
	}
	// Update is called once per frame
	protected override void perlinUpdate() {
		//updateVars()
		base.perlinUpdate();
		
		float sp;
		if (aud) sp = aud.GetBands(bands);
		else sp = 1f;

		//CYCLE CONSTANTLY BY SINE, USING NOISE FOR OSCILLATION
		float h1 = 1;//_amp * Mathf.Sin(2*Mathf.PI*Time.time * _freq + noiseFactor * noise.Noise(v.x/5f, v.z/5f));
		h1 = h1 * sp*audioFactor;
		
		h1 *= _vol;

		ren.sharedMaterial.SetFloat ("_Amount", h1);
			

	}
}
