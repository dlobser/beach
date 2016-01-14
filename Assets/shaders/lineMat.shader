// Unlit alpha-blended shader.
// - no lighting
// - no lightmap support
// - no per-material color

Shader "Unlit/lineMat" {
Properties {
	_MainTex ("Base (RGB) Trans (A)", 2D) = "white" {}
	_SpriteTex("sprite", 2D) = "white" {}
	_ShadowTex("shadow", 2D) = "white" {}
	_Tile ("Tiling", Float) = 12
	_ShadowTile ("Tiling", Float) = 12
	_ShadowSpeed ("Tiling", Float) = 12
	_Speed ("Speed", Float) = 12
	_Saturation ("saturation", Float) = 1
	_Brightness ("brightness", Float) = 1
}

SubShader {
	Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
	LOD 100
	
	ZWrite Off
	Blend SrcAlpha OneMinusSrcAlpha 
	Cull Off
	
	Pass {  
		CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata_t {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
				UNITY_FOG_COORDS(1)
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _SpriteTex;
			sampler2D _ShadowTex;
			float _Tile;
			float _ShadowTile;
			float _ShadowSpeed;
			float _Saturation;
			float _Brightness;
			float _Speed;
			
			float3 hsv2rgb(float3 c)
			{
			    float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
			    float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
			    return c.z * lerp(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
			}
			
			v2f vert (appdata_t v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP*10.0, v.vertex);
				
//				o.vertex = mul(UNITY_MATRIX_P, 
//	              mul(UNITY_MATRIX_MV, float4(0.0, 0.0, 0.0, 1.0))
//	              - float4(v.vertex.x, v.vertex.y, v.vertex.z, 0.0));
	              
				o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = tex2D(_MainTex, i.texcoord);
				fixed4 sprite = tex2D(_SpriteTex, float2((i.texcoord.x*_Tile*col.r)+col.g*_Time.z*_Speed,i.texcoord.y));
				fixed4 sprite2 = tex2D(_ShadowTex, float2((i.texcoord.x*_ShadowTile*col.r)+col.g*_Time.z*_ShadowSpeed,i.texcoord.y));
				sprite*=sprite2;
				float4 hue = float4(hsv2rgb(float3(col.b,_Saturation,_Brightness)),1.0);
				sprite.a *= col.a;
				UNITY_APPLY_FOG(i.fogCoord, col);
				return sprite*hue;
			}
		ENDCG
	}
}

}
