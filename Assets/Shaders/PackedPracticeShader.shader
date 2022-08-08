Shader "Hollistic/PackedPractice" {

    Properties {
        _myColour ("Example Colour", Color) = (1, 1, 1, 1)
    }

    SubShader {

        CGPROGRAM
            #pragma surface surf Lambert

            struct Input {
                float uvMainText;
            };

            fixed4 _myColour;

            void surf (Input IN, inout SurfaceOutput o) {
                o.Albedo = _myColour.rbg;
            }

        ENDCG
    }

    FallBack "Diffuse"
}