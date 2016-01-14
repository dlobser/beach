Shader "Unlit/distancePulse"
{
Properties {
	 	_Color ("Color", Color) = (1,1,1,.5)
	 	_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Speed ("Speed", Float) = 12
		_Center("center",Vector)=(0,0,0,0)
		_Amount ("Amount", Float) = 12
		_Displace("displace amount",Float) = 1
		_Offset("offset",Float)=1
		_Freq ("Frequency", Float) = 12
		_Dropoff("dropoff",float) = 1

}

SubShader {
Tags { "Queue" = "Transparent" } 
	Pass { 
        CULL OFF
 		ZWrite Off // don't write to depth buffer 
            // in order not to occlude other objects

		Blend SrcAlpha OneMinusSrcAlpha 
		GLSLPROGRAM 
 		 
         #ifdef VERTEX // here begins the vertex shader
		varying vec2 uv;
		uniform mat4 _Object2World; 
		uniform mat4 _World2Object; 
		uniform vec4 _Time;
		varying vec4 pos;
		uniform float _Speed;
		uniform float _Freq;
		uniform float _Displace;
		uniform float _Offset;
		uniform float _Amount;
		varying vec3 norm;
		varying float dist;
		uniform vec3 _Center;
		uniform float _Dropoff;
		
//		float dst(vec3

         void main() {
         
         	pos = _Object2World * gl_Vertex;
			uv = gl_MultiTexCoord0.xy;

			norm = gl_Normal;
			mat4 modelMatrix = _Object2World;
			mat4 modelMatrixInverse = _World2Object; 
			
			vec4 poop = _World2Object * vec4(_Center,1.0);
			
			float d = distance(gl_Vertex.xyz,poop.xyz);//*_Freq;//+_Offset;
			
			 dist = (sin(max(0.0,min(_Freq,((1.-d)+_Offset*3.14))/_Freq)*3.14))*_Amount;
			 float offset = dist;//sin(dist);
			vec4 offsetter = vec4(gl_Normal,0.0)*offset*dist*_Displace;//*uv.x;
			vec4 newPos = gl_Vertex + offsetter;
			vec4 position = gl_ModelViewProjectionMatrix *  newPos;
//			
//			varyingNormalDirection = normalize(vec3(vec4(gl_Normal, 0.0) * modelMatrixInverse));
			gl_Position = position;//position;//gl_ModelViewProjectionMatrix *  gl_Vertex;//position;

//         	gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
         }
          
         #endif // here ends the definition of the vertex shader
 
 
         #ifdef FRAGMENT // here begins the fragment shader
		varying vec2 uv;

		uniform vec4 _Color;

		uniform vec4 _Time;
		uniform float _Speed;
		varying float dist;
		uniform float _Dropoff;
		uniform sampler2D _MainTex;

        void main()
         {
         	
            gl_FragColor = texture2D(_MainTex,uv)* vec4(vec3(dist*_Dropoff),1.0)*_Color;
     
         }
 
         #endif // here ends the definition of the fragment shader
 
         ENDGLSL // here ends the part in GLSL 
      }
   }

}




