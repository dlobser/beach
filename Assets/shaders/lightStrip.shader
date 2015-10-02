Shader "Unlit/lightStrip"
{
Properties {
	 	_Color ("Color", Color) = (1,1,1,.5)
		_Tile ("Tiling", Float) = 12
		_Speed ("Speed", Float) = 12
		_MultEnds ("Multiply Ends", Float) = 1
		_LightSpeed ("LightSpeed", Float) = 12
		_Amount ("Amount", Float) = 12
		_Freq ("Frequency", Float) = 12
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_ColorTex ("Albedo (RGB)", 2D) = "white" {}
		_LightSpeedTex ("LightSpeed (RGB)", 2D) = "white" {}
		_DispAmp ("LightSpeed (RGB)", 2D) = "white" {}
		_DispSpeed ("LightSpeed (RGB)", 2D) = "white" {}
		_DispFreq ("LightSpeed (RGB)", 2D) = "white" {}
		_Repeat ("LightSpeed (RGB)", 2D) = "white" {}
}

SubShader {
	Tags { "Queue" = "Transparent" } 
	Pass { 
        CULL OFF
 		ZWrite Off // don't write to depth buffer 
            // in order not to occlude other objects

         Blend SrcAlpha One // use alpha blending
         GLSLPROGRAM 
 		 
         #ifdef VERTEX // here begins the vertex shader
		
		varying vec2 uv;
		uniform mat4 _Object2World; 
		uniform mat4 _World2Object; 
		uniform vec4 _Time;
		varying vec4 pos;
		uniform float _Speed;
		uniform float _Freq;
		uniform float _Amount;
		varying vec3 norm;
		uniform float _MultEnds;
		
				uniform vec4 _MainTex_ST; 
	
		uniform sampler2D _DispAmp;
		uniform sampler2D _DispSpeed;
		uniform sampler2D _DispFreq;

         void main() {
         
         	pos = _Object2World * gl_Vertex;
			uv = gl_MultiTexCoord0.xy;
			
			vec4 dispAmp =   texture2D(_DispAmp,  _MainTex_ST.xy * uv + _MainTex_ST.zw);
			vec4 dispSpeed = texture2D(_DispSpeed,_MainTex_ST.xy * uv + _MainTex_ST.zw);
			vec4 dispFreq =  texture2D(_DispFreq, _MainTex_ST.xy * uv + _MainTex_ST.zw);

			norm = gl_Normal;
			mat4 modelMatrix = _Object2World;
			mat4 modelMatrixInverse = _World2Object; 

			float offset = (sin(dispFreq.x*_Freq*(uv.y*25.+_Time.y*_Speed*dispSpeed.x)))*_Amount*dispAmp.x;
			float mult = min(_MultEnds,(-1.*cos(uv.y*3.1415*2.)+1.)/2.*15.);
			vec4 offsetter = vec4(gl_Normal,0.0)*offset*mult;//*uv.x;
			vec4 newPos = gl_Vertex + offsetter;

//			varyingNormalDirection = normalize(vec3(vec4(gl_Normal, 0.0) * modelMatrixInverse));
			gl_Position = gl_ModelViewProjectionMatrix *  newPos;

//         	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
         }
          
         #endif // here ends the definition of the vertex shader
 
 
         #ifdef FRAGMENT // here begins the fragment shader
		varying vec2 uv;

		uniform vec4 _Color;
		uniform float _Tile;
		uniform sampler2D _MainTex; 
		uniform sampler2D _ColorTex; 

		uniform vec4 _MainTex_ST; 
		uniform vec4 _Time;
		uniform float _LightSpeed;
		uniform sampler2D _LightSpeedTex;
		uniform sampler2D _Repeat;
		
        void main()
         {
         	
            vec4 lightSpeedTex = texture2D(_LightSpeedTex,_MainTex_ST.xy * uv + _MainTex_ST.zw);
            vec4 repeat = texture2D(_Repeat,_MainTex_ST.xy * uv + _MainTex_ST.zw);

         	vec2 nUV = vec2(uv.x *_Tile,uv.y*repeat.x + (lightSpeedTex.r*_Time.z));
         	vec4 Main = texture2D(_MainTex, _MainTex_ST.xy * nUV + _MainTex_ST.zw);
         	vec4 ColorTex = texture2D(_ColorTex,_MainTex_ST.xy * uv + _MainTex_ST.zw);

			vec4 L = Main;	
            gl_FragColor = Main*_Color*ColorTex*2.;
     
         }
 
         #endif // here ends the definition of the fragment shader
 
         ENDGLSL // here ends the part in GLSL 
      }
   }

}




