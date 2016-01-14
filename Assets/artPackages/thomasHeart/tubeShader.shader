Shader "Unlit/tubeShader"{

Properties {
	 	_Color ("Color", Color) = (1,1,1,.5)
		_Tile ("Tiling", Float) = 12
		_Speed ("Speed", Float) = 12
		_Amount ("Amount", Float) = 12
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_CrossTex1("Sketch Darkest (RGB)", 2D) = "white" {}
		_CrossTex2("Sketch (RGB)", 2D) = "white" {}
		_CrossTex3("Sketch (RGB)", 2D) = "white" {}
		_CrossTex4("Sketch (RGB)", 2D) = "white" {}
}

SubShader {
	Pass { 
                 

         GLSLPROGRAM 
 		 
         #ifdef VERTEX // here begins the vertex shader
          varying vec2 uv;
          uniform mat4 _Object2World; 
		 uniform mat4 _World2Object; 
		 uniform vec4 _Time;
		 varying vec4 pos;
		 uniform float _Speed;
		 uniform float _Amount;
			varying vec3 norm;
         void main() {
         
         	pos = _Object2World * gl_Vertex;
			uv = gl_MultiTexCoord0.xy;

			norm = gl_Normal;
			mat4 modelMatrix = _Object2World;
			mat4 modelMatrixInverse = _World2Object; 

			float offset = ((max(.5,sin(uv.y*25.+_Time.y*_Speed)))-.3)*_Amount;
			float mult = min(1.0,(-1.*cos(uv.y*3.1415*2.)+1.)/2.*15.);
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
 			uniform sampler2D _CrossTex1; 
 			uniform sampler2D _CrossTex2; 
 			uniform sampler2D _CrossTex3; 
 			uniform sampler2D _CrossTex4; 
		
        void main()
         {
//         	vec2 nUV = uv*_Tile;
//         	vec4 Main = texture2D(_MainTex, uv);
// 			vec4 CR1 = texture2D(_CrossTex1, nUV); CR1.a = CR1.r;
//			vec4 CR2 = texture2D(_CrossTex2, nUV); CR2.a = CR2.r;
//			vec4 CR3 = texture2D(_CrossTex3, nUV); CR3.a = CR3.r;
//			vec4 CR4 = texture2D(_CrossTex4, nUV); CR4.a = CR4.r;
//			
//			vec4 emit = mix(vec4(0,0,0,0),
//						   mix(CR1,
//						   mix(CR2,
//						   mix(CR3,
//						   mix(CR4, vec4(1,1,1,1), 
//						   		clamp((2.*_Color.a*Main.a-0.75)*10.0, 0.0, 1.0)),
//						   		clamp((2.*_Color.a*Main.a-0.6)*10.0, 0.0, 1.0)),
//						   		clamp((2.*_Color.a*Main.a-0.45)*10.0, 0.0, 1.0)),
//						   		clamp((2.*_Color.a*Main.a-0.3)*10.0, 0.0, 1.0)),
//						   		clamp((2.*_Color.a*Main.a-0.15)*10.0, 0.0, 1.0));
//						   		
//
//			vec4 L = mix(Main*_Color,Main,emit.a); 		
            gl_FragColor = texture2D(_MainTex, uv);
     
         }
 
         #endif // here ends the definition of the fragment shader
 
         ENDGLSL // here ends the part in GLSL 
      }
   }

}



