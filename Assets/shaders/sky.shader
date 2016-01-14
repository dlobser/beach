Shader "Custom/sky" {
Properties{
   			_MainTex ("Albedo (RGB)", 2D) = "white" {}
   			_Color ("Color", Color) = (1,1,1,1)
   			_Tile ("Scale", Float) = 12
   		}
   SubShader {
   		
      Tags { "Queue" = "Transparent" } 
         // draw after all opaque geometry has been drawn
      Pass {
         ZWrite Off // don't write to depth buffer 
            // in order not to occlude other objects

         Blend SrcAlpha OneMinusSrcAlpha // use alpha blending

         GLSLPROGRAM
               
         #ifdef VERTEX
        uniform vec4 _Color; // define shader property for shaders

         // The following built-in uniforms are also defined in 
         // "UnityCG.glslinc", which could be #included 
         uniform vec3 _WorldSpaceCameraPos; 
            // camera position in world space
         uniform mat4 _Object2World; // model matrix
         uniform mat4 _World2Object; // inverse model matrix 
            // (apart from the factor unity_Scale.w)
                  
         varying vec3 varyingNormalDirection; 
            // normalized surface normal vector
         varying vec3 varyingViewDirection; 
         uniform sampler2D _MainTex;
         varying vec2 uv;
         varying vec3 pos;
            // normalized view direction 
                 
         
         void main()
         {				
            mat4 modelMatrix = _Object2World;
            mat4 modelMatrixInverse = _World2Object; 
            uv = gl_MultiTexCoord0.xy;
            pos = (_Object2World*gl_Vertex).xyz;

               // multiplication with unity_Scale.w is unnecessary 
               // because we normalize transformed vectors

            varyingNormalDirection = normalize(
               vec3(vec4(gl_Normal, 0.0) * modelMatrixInverse));
            varyingViewDirection = normalize(_WorldSpaceCameraPos 
               - vec3(modelMatrix * gl_Vertex));

            gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
         }
         
         
         
         #endif

         #ifdef FRAGMENT
         uniform vec4 _Color;
         varying vec3 pos;
                 uniform vec3 _WorldSpaceCameraPos; 
          varying vec3 varyingNormalDirection; 
          uniform sampler2D _MainTex;
            // normalized surface normal vector
         varying vec3 varyingViewDirection;
         varying vec2 uv;
         uniform float _Tile;
            // normalized view direction 
         void main()
         {
             vec3 normalDirection = normalize(varyingNormalDirection);
            vec3 viewDirection = normalize(varyingViewDirection);
            float newOpacity = pow(abs(dot(viewDirection, normalDirection)),1.5)*1.8;
            float dropoff = max(min(1.0,distance(pos.xyz,_WorldSpaceCameraPos)*.001),0.0);
            vec4 tex = texture2D(_MainTex,uv*_Tile);//*newOpacity*_Color;
           gl_FragColor = tex*newOpacity*_Color;//*mix(vec4(0,.7,1.0,1.0),vec4(0,0,.8,1.0),);//*(vec4(1,.20,1,0)+tex)*vec4(vec3(1.0),newOpacity) ;

//            gl_FragColor = vec4(tex.xyz,newOpacity);
         }
         
         #endif

         ENDGLSL
      }
   }
}