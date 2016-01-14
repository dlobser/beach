Shader "Unlit/unlit2GLSL"
{
Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
//		_AddTex ("add", 2D) = "black" {}
//		_MultTex ("mult", 2D) = "white" {}
		_Speed("speed",Vector) = (0,0,0,0)
		_Color("color",Color) = (1,1,1,1)


	}
   SubShader { // Unity chooses the subshader that fits the GPU best
   
      Pass { // some shaders require multiple passes
         GLSLPROGRAM // here begins the part in Unity's GLSL
		
//		varying vec2 uv;
		varying vec4 uv2;
		uniform vec4 _MainTex_ST; 
         #ifdef VERTEX // here begins the vertex shader

         void main() // all vertex shaders define a main() function
         {
//         	uv = TEXCOORD0;
         	uv2 = gl_MultiTexCoord0;
            gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
               // this line transforms the predefined attribute 
               // gl_Vertex of type vec4 with the predefined
               // uniform gl_ModelViewProjectionMatrix of type mat4
               // and stores the result in the predefined output 
               // variable gl_Position of type vec4.
         }

         #endif // here ends the definition of the vertex shader


         #ifdef FRAGMENT // here begins the fragment shader
         
        uniform sampler2D _MainTex;
//        uniform vec4 _MainTex_ST;
//		uniform sampler2D _AddTex;
//		uniform sampler2D _AddTex_ST;
//		uniform sampler2D _MultTex;
		uniform vec4 _Speed;
		uniform vec4 _Color;
		uniform vec4 _Time;
//		varying vec2 uv;
//		varying vec4 uv2;
		

         void main() // all fragment shaders define a main() function
         {
//            gl_FragColor = vec4(1.0, 0.0, 0.0, 1.0); 
//            uv = vec2(1.0);
			vec2 u = _MainTex_ST.xy*uv2.xy;
            vec4 col = texture2D(_MainTex,vec2(u.x+_Speed.x*_Time.x,
				u.y+
				_Speed.y*
				_Time.x));
//				vec4 A = texture2D(_AddTex,uv2.xy);
//				vec4 B = texture2D(_MultTex,uv2.xy);
				gl_FragColor = ((col)*sin(uv2.y*6.28)*3.+uv2.y)*_Color;
               // this fragment shader just sets the output color 
               // to opaque red (red = 1.0, green = 0.0, blue = 0.0, 
               // alpha = 1.0)
         }

         #endif // here ends the definition of the fragment shader

         ENDGLSL // here ends the part in GLSL 
      }
   }
}