Shader "Custom/facingShader" {

Properties {
	_Color ("Color", Color) = (1,1,1,1)
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
	_HueShift ("hue shift", Float) = 0
}

SubShader {
	Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
	LOD 100
	
	ZWrite Off
	Blend One One//SrcAlpha OneMinusSrcAlpha 
	Cull Off
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
				
//				float2 texcoord : TEXCOORD0;
				float2 texcoord2 : TEXCOORD1;
//				float3 pos;
//				float3 varyingNormalDirection;
//				float3 varyinvViewDirection;
			};

			struct v2f {
				float4 vertex : SV_POSITION;
				float3 normal : SV_NORMAL;
//				half2 uv : TEXCOORD0;
//				float3 pos;
				float3 varyingNormalDirection;
				float3 varyingViewDirection;
				
				half2 uv;// : TEXCOORD0;
				half2 texcoord2;// : TEXCOORD1;
				UNITY_FOG_COORDS(1)
			};

			sampler2D _MainTex;
//			float4 _MainTex_ST;
//			float _Tile;
			fixed4 _Color;
			
			float4 _MainTex_ST;
				sampler2D _SpriteTex;
				sampler2D _PosTex;
				sampler2D _ShadowTex;
				float _Tile;
				float _ShadowTile;
				float _HueShift;
				float _ShadowSpeed;
				float _Saturation;
				float _Brightness;
				float _Speed;
				float _LineWidth;
				
				float _UNPnts;
	         	float repeat;
			
			v2f vert (appdata_t v)
			{
				v2f o;
				o.vertex = mul(UNITY_MATRIX_MVP, v.vertex);
//				o.texcoord = TRANSFORM_TEX(v.texcoord, _MainTex);
//				o.pos = (mul(_Object2World,v.vertex)).xyz;
				o.normal = v.normal;

				o.varyingNormalDirection =  normalize(ObjSpaceViewDir(v.vertex));//normalize(

				o.varyingViewDirection = 	(dot(o.varyingNormalDirection, v.normal));
                o.uv = v.uv;//TRANSFORM_TEX(v.texcoord, _MainTex);
				o.texcoord2 = v.texcoord2;
				return o;
			}
			
			float3 hsv2rgb(float3 c)
				{
				    float4 K = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				    float3 p = abs(frac(c.xxx + K.xyz) * 6.0 - K.www);
				    return c.z * lerp(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
				}
			
			fixed4 frag (v2f i) : SV_Target
			{
//				fixed4 col = tex2D(_MainTex, i.uv);
//				UNITY_APPLY_FOG(i.fogCoord, col);
//				return col;
				
				float3 normalDirection = normalize(i.varyingNormalDirection);
				float3 viewDirection = normalize(i.varyingViewDirection);
				float newOpacity =pow(abs(i.varyingViewDirection),2.)*1.;
				fixed4 tex = tex2D(_MainTex,i.uv*_Tile);//*newOpacity*_Color;
				float3 viewDir = normalize(ObjSpaceViewDir(i.vertex));
				
				
				fixed4 col = tex2D(_MainTex, i.uv);
				fixed4 sprite =  tex2D(_SpriteTex, float2(((i.texcoord2.x)*_Tile*col.r)+_Time.z*_Speed,i.texcoord2.y));
				fixed4 sprite2 = tex2D(_ShadowTex, float2((i.texcoord2.x*_ShadowTile*col.r)+col.g*_Time.z*_ShadowSpeed,i.texcoord2.y));
				float wave = min(1.0,sin(i.texcoord2.x*3.1415)*2.);
				sprite*=sprite2;
				float4 hue = float4(hsv2rgb(float3(col.b+(_HueShift*_Time.x),_Saturation,_Brightness)),1.0);
				sprite.a *= col.a;
				return wave*sprite*hue*sprite.a*newOpacity;
					
					
					
//				return tex*newOpacity*_Color;//*mix(vec4(0,.7,1.0,1.0),vec4(0,0,.8,1.0),);//*(vec4(1,.20,1,0)+tex)*vec4(vec3(1.0),newOpacity) ;
			}
		ENDCG
	}
}

}
