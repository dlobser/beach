// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Unlit alpha-blended shader.
// - no lighting
// - no lightmap support
// - no per-material color

Shader "Custom/skyCG" {
Properties {
	_MainTex ("Albedo (RGB)", 2D) = "white" {}
	_Color ("Color", Color) = (1,1,1,1)
	_Tile ("Scale", Float) = 12
}

SubShader {
	Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
	LOD 100
	
	ZWrite Off
	Blend SrcAlpha OneMinusSrcAlpha 
	
	Pass {  
		CGPROGRAM
// Upgrade NOTE: excluded shader from DX11 and Xbox360; has structs without semantics (struct v2f members pos,varyingNormalDirection,varyingViewDirection)
#pragma exclude_renderers d3d11 xbox360
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata_t {
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float3 normal : NORMAL;
				float3 pos;
//				float3 varyingNormalDirection;
//				float3 varyinvViewDirection;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				float3 normal : SV_NORMAL;
				half2 uv : TEXCOORD0;
				float3 pos;
				float3 varyingNormalDirection;
				float3 varyingViewDirection;
				UNITY_FOG_COORDS(1)
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			float _Tile;
			fixed4 _Color;
			
			v2f vert (appdata_t v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.pos = (mul(unity_ObjectToWorld,v.vertex)).xyz;
				o.normal = v.normal;
//				UNITY_TRANSFER_FOG(o,o.vertex);
				
//				varyingNormalDirection = normalize(
//				vec3(vec4(gl_Normal, 0.0) * modelMatrixInverse));
//				varyingViewDirection = normalize(_WorldSpaceCameraPos 
//				- vec3(modelMatrix * gl_Vertex));
//				
//				o.varyingViewDirection  = normalize(ObjSpaceViewDir(v.vertex));
//                o.varyingNormalDirection = float4( dot(o.varyingViewDirection,v.normal), 1.0, 0.0, 1.0 );
                
				o.varyingNormalDirection =  normalize(ObjSpaceViewDir(v.vertex));//normalize(
//					float3(mul(float4(v.normal, 0.0) , UNITY_MATRIX_IT_MV)));
//				o.varyingViewDirection = normalize(_WorldSpaceCameraPos 
//					- float3(mul(_Object2World , v.vertex)));
				o.varyingViewDirection = 	(dot(o.varyingNormalDirection, v.normal));
//               
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
//				fixed4 col = tex2D(_MainTex, i.uv);
//				UNITY_APPLY_FOG(i.fogCoord, col);
//				return col;
				
				float3 normalDirection = normalize(i.varyingNormalDirection);
				float3 viewDirection = normalize(i.varyingViewDirection);
				float newOpacity = pow(abs(i.varyingViewDirection),1.5)*1.8;
				float dropoff = max(min(1.0,distance(i.pos,_WorldSpaceCameraPos)*.001),0.0);
				fixed4 tex = tex2D(_MainTex,i.uv*_Tile);//*newOpacity*_Color;
				float3 viewDir = normalize(ObjSpaceViewDir(i.vertex));
				return tex*newOpacity*_Color;//*mix(vec4(0,.7,1.0,1.0),vec4(0,0,.8,1.0),);//*(vec4(1,.20,1,0)+tex)*vec4(vec3(1.0),newOpacity) ;
			}
		ENDCG
	}
}

}
