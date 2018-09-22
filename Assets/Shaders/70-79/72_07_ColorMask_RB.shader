﻿Shader "Custom/70-79/72_07_ColorMask_RB"
{
    SubShader
    {
        Pass 
        {
            ColorMask RB
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            #include "UnityCG.cginc"
            
            struct v2f
            {
                float4 pos : SV_POSITION;
                float4 color : COLOR;
            };
            
            v2f vert(appdata_base v)
            {
                v2f o;
                UNITY_INITIALIZE_OUTPUT(v2f, o);
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            
            fixed4 frag(v2f i) : COLOR
            {
                return abs(_SinTime);
            }
            ENDCG
        }
    }
}   