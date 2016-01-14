Shader "Custom/lineMatOrientGLSL" {
Properties {
       	_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
		_PosTex ("position", 2D) = "white" {}
		_SpriteTex("sprite", 2D) = "white" {}
		_ShadowTex("shadow", 2D) = "white" {}
		_Tile ("Tiling", Float) = 12
		_ShadowTile ("Tiling", Float) = 12
		_ShadowSpeed ("Tiling", Float) = 12
		_LineWidth ("lineWidth", Float) = 12
		_Speed ("Speed", Float) = 12
		_Saturation ("saturation", Float) = 1
		_Brightness ("brightness", Float) = 1
		_UNPnts ("pointsAmount", Float) = 100
//		_ObjMat ("pointsAmount", Float4x4) = 100
	}
 	SubShader { // Unity chooses the subshader that fits the GPU best
      Pass { // some shaders require multiple passes
         GLSLPROGRAM // here begins the part in Unity's GLSL
 
         #ifdef VERTEX // here begins the vertex shader
 			varying vec3 normal;
 			uniform vec4 _Time;
 			varying vec2 uv;
 			
         	uniform sampler2D _MainTex;
			uniform sampler2D _PosTex;
			uniform float _LineWidth;
			uniform float _UNPnts;
	         	
 		
        vec4 place(float f) {
            float t = max(0., min(.999, f)) * (_UNPnts - 1.);
            int n = int(t);
            vec4 uData1 = texture2D(_PosTex, vec2(0.,f));
            vec4 uData2 = texture2D(_PosTex, vec2(0.,f+.001));
            return vec4(mix(uData1,uData2, t-float(n) ).xyz,1.);
         }
      
         
         void main() {
         
         	uv = gl_MultiTexCoord0.xy;
         	vec4 position = gl_Vertex;
            vec4 p0 = gl_ModelViewProjectionMatrix * place(position.x  );
            vec4 p1 = gl_ModelViewProjectionMatrix * place(position.x + 1./1000.);
            gl_Position =  p1 + normalize(vec4(p1.y-p0.y, p0.x-p1.x, 0., 0.)) * position.y;// * texture2D(_PosTex,uv).a * _LineWidth;
         }
          
         #endif // here ends the definition of the vertex shader
 
 
         #ifdef FRAGMENT // here begins the fragment shader
 			uniform float _value;
 			varying vec3 normal;
 			uniform vec4 _Time;
 			uniform vec4 _Color;
 			varying vec2 uv;
 			uniform sampler2D _MainTex; 
 			
// 				uniform sampler2D _MainTex;
				uniform sampler2D _SpriteTex;
				uniform sampler2D _PosTex;
				uniform sampler2D _ShadowTex;
				uniform float _Tile;
				uniform float _ShadowTile;
				uniform float _ShadowSpeed;
				uniform float _Saturation;
				uniform float _Brightness;
				uniform float _Speed;
				uniform float _LineWidth;
				uniform float _UNPnts;
	         	uniform float repeat;
	    
	    
     	vec3 hsv2rgb(vec3 c)
		{
		    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
		    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
		    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
		}
		
        void main()
         {
         
         	vec4 col = texture2D(_MainTex, uv);
//			vec4 sprite = texture2D(_SpriteTex, float2(((uv.x)*_Tile*col.r)+col.g*_Time.z*_Speed,uv.y));
//			vec4 sprite2 = texture2D(_ShadowTex, float2((uv.x*_ShadowTile*col.r)+col.g*_Time.z*_ShadowSpeed,uv.y));
//			float wave = sin(uv.x*_UNPnts*3.1415);
//			sprite*=sprite2;
//			vec4 hue = float4(hsv2rgb(float3(col.b,_Saturation,_Brightness)),1.0);
//			sprite.a *= col.a;
//			UNITY_APPLY_FOG(i.fogCoord, col);
			gl_FragColor = vec4(1.0);//wave*sprite*hue;
//					
//         	vec4 col2 = texture2D(_MainTex, vec2(uv.x,uv.y*repeat));
//            gl_FragColor = vec4(_Color.rgb,col2.a*  ((cos(uv.x*3.1415*2.0)*-1.)+1.)  *_LineAlpha);//vec4(col2.a);
//            if(gl_FragColor.a < .5)
//            	discard;
     
         }
 
         #endif // here ends the definition of the fragment shader
 
         ENDGLSL // here ends the part in GLSL 
      }
   }
}