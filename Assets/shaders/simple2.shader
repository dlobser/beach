Shader "Custom/simple2" {
	Properties {
		_Color ("Color", Color) = (0.26,0.19,0.16,0.0)
		_Color2 ("Color2", Color) = (0.26,0.19,0.16,0.0)
		_Lgt1 ("Light 1", Vector) = (1.,0.,23.,0.)
		_Lgt2 ("Light 2", Vector) = (1.,0.,23.,0.)
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		
		Pass {
			CGPROGRAM
				#pragma vertex vert
				#pragma fragment frag
				#include "UnityCG.cginc"
			
				struct v2f {
					float4 pos : SV_POSITION;
					float4 wPos : TEXCOORD0;
				};
			
				float4 _Color;
				float4 _Lgt1;
				float4 _Color2;
				float4 _Lgt2;
				
					
				float dist(float3 a, float3 b){
					float A = a.x-b.x;
					float B = a.y-b.y;
					float C = a.z-b.z;
					return sqrt(A*A+B*B+C*C);
				}
				float dist2(float a, float b){
					return sqrt(a-b);
				}
			
				v2f vert(appdata_full v) {
					v2f o;
					o.pos = mul(UNITY_MATRIX_MVP, v.vertex);
					o.wPos = mul(_Object2World, v.vertex);
					float d = max(1.,(dist(_Lgt1.z,o.wPos.z)*-1.)+125.);
					o.pos.x*=max(1.,d*.009);
					o.pos.y*=max(1.,d*.009);

					return o;
				}
			
				
			
				
				float4 frag(v2f IN) : COLOR {
	
					float d = dist(_Lgt1.xyz,IN.wPos.xyz);
					float p = max(0.,sin(max(0.,d))*6.);
					d*=-1;
					d+=25;
					d+=p;
					
					float db = dist(float3(cos(_Lgt1.z*.1)*8.,sin(_Lgt1.z*.1)*8.,_Lgt1.z),IN.wPos.xyz);
					db*=-1;
					db+=8;
					
					float d2 = dist(_Lgt2.xyz,IN.wPos.xyz);
					d2*=-1;
					d2+=19;
					d2+=p*.8;
					
					float4 pos = IN.wPos;
					float4 col1 = _Color* max(0.0,d)*.03*float4(.5,.8,1.,1.);
					float4 col1b = _Color*max(0.0,db)*.1;
					float4 col2 = _Color2*max(0.0,d2)*.05;
					return col1 + col2 + col1b;
				}
			ENDCG
		}
	}
}
