Shader "Unlit/unlit2"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_AddTex ("add", 2D) = "black" {}
		_MultTex ("mult", 2D) = "white" {}
		_Speed("speed",Vector) = (0,0,0,0)
		_Color("color",Color) = (1,1,1,1)


	}
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue"="Transparent" }
		LOD 100

		Pass
		{
			CGPROGRAM
// Upgrade NOTE: excluded shader from DX11 and Xbox360; has structs without semantics (struct v2f members uv,uv2)
#pragma exclude_renderers d3d11 xbox360
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
				float2 uv2 :TEXCOORD1;
			};

			struct v2f
			{
				float2 uv: TEXCOORD0;
				float2 uv2 :TEXCOORD1;
				UNITY_FOG_COORDS(1)
				float4 vertex : SV_POSITION;
			};

			sampler2D _MainTex;
			sampler2D _AddTex;
			sampler2D _MultTex;
			float4 _Speed;
			float4 _Color;
			float4 _MainTex_ST;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.uv2 = v.uv;
				UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, float2(i.uv.x+_Speed.x*_Time.x,
				i.uv.y+
				_Speed.y*
				_Time.x));
				fixed4 A = tex2D(_AddTex,i.uv);
				fixed4 B = tex2D(_MultTex,i.uv);
				// apply fog
				UNITY_APPLY_FOG(i.fogCoord, col);				
				return ((col+A)*B*sin(i.uv2.y*6.28)*3.+i.uv2.y)*_Color;
			}
			ENDCG
		}
	}
}
