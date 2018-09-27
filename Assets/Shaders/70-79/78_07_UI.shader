﻿Shader "Custom/70-79/78_07_UI"
{
    Properties
    {
        [IntRange] _Alpha1 ("Alpha 1", Range (0, 255)) = 0
        _Alpha2 ("Alpha 2", Range(0, 255)) = 0
    }
    
    SubShader
    {
        Tags { "Queue" = "Transparent" "RenderType" = "Transparent" }
        
        CGPROGRAM
        #pragma surface surf Lambert alpha:fade
        
        fixed _Alpha1;
        fixed _Alpha2;
        
        struct Input
        {
            float2 uv_MainTex;
        };
        
        void surf(Input IN, inout SurfaceOutput o)
        {
            o.Albedo = 1;
            o.Alpha = (_Alpha1 / 255.0) * (_Alpha2 / 255.0);
        }
        ENDCG
    }
    Fallback "Diffuse"
}   