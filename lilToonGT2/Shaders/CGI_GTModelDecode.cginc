
float _EnableAvaCrypt;

float _BitKey0;
float _BitKey1;
float _BitKey2;
float _BitKey3;

float _BitKey4;
float _BitKey5;
float _BitKey6;
float _BitKey7;

float _BitKey8;
float _BitKey9;
float _BitKey10;
float _BitKey11;

float _BitKey12;
float _BitKey13;
float _BitKey14;
float _BitKey15;

float _BitKey16;
float _BitKey17;
float _BitKey18;
float _BitKey19;

float _BitKey20;
float _BitKey21;
float _BitKey22;
float _BitKey23;

float _BitKey24;
float _BitKey25;
float _BitKey26;
float _BitKey27;

float _BitKey28;
float _BitKey29;
float _BitKey30;
float _BitKey31;

float4 modelDecode(float4 vert, float3 normal, float2 uv0, float2 uv1)
{
    if (!_EnableAvaCrypt) return vert;

    // AvaCrypt Randomly Generated Begin
float decodeKey0 = (_BitKey0 + 1.665435) * (_BitKey1 + 0.9190379) * (_BitKey2 + 1.398461) * (_BitKey3 + 1.424742);
float decodeKey1 = (_BitKey4 + 0.8068563) * (_BitKey5 + 0.7168342) * (_BitKey6 + 0.8849539) * (_BitKey7 + 0.4908149);
float decodeKey2 = (_BitKey8 + 1.230231) * (_BitKey9 + 1.047104) * (_BitKey10 + 0.533821) * (_BitKey11 + 0.08608961);
float decodeKey3 = (_BitKey12 + 0.7483009) * (_BitKey13 + 0.9510475) * (_BitKey14 + 1.186526) * (_BitKey15 + 0.2662108);
float decodeKey4 = (_BitKey16 + 0.06635118) * (_BitKey17 + 0.3764012) * (_BitKey18 + 0.5143896) * (_BitKey19 + 0.3344367);
float decodeKey5 = (_BitKey20 + 0.8106314) * (_BitKey21 + 1.632235) * (_BitKey22 + 1.350314) * (_BitKey23 + 1.945);
float decodeKey6 = (_BitKey24 + 0.7287511) * (_BitKey25 + 0.7629718) * (_BitKey26 + 1.140175) * (_BitKey27 + 1.08026);
float decodeKey7 = (_BitKey28 + 0.7416013) * (_BitKey29 + 1.251617) * (_BitKey30 + 0.0639627) * (_BitKey31 + 1.096068);
float comKey0 = sin(decodeKey6 + decodeKey6) * 1.184541 * cos(decodeKey5 + decodeKey5);
float comKey1 = sin(decodeKey7 + decodeKey4) * 0.7534689 * sin(decodeKey7 + decodeKey5);
float comKey2 = cos(decodeKey1 - decodeKey3) * 0.8064076 * cos(decodeKey0 - decodeKey4);
float comKey3 = cos(decodeKey0 - decodeKey6) * 0.005353212 * cos(decodeKey1 - decodeKey2);
float comKey4 = sin(decodeKey1 - decodeKey3) * 1.297156 * sin(decodeKey4 + decodeKey7);
float comKey5 = sin(decodeKey0 - decodeKey5) * 0.1962724 * sin(decodeKey1 + decodeKey2);
float comKey6 = cos(decodeKey6 + decodeKey4) * 1.014071 * sin(decodeKey3 - decodeKey7);
float comKey7 = sin(decodeKey2 - decodeKey0) * 1.928044 * sin(decodeKey3 + decodeKey2);
  
    // AvaCrypt Randomly Generated End
   // vert.xyz *= 10.0;
    vert.xyz -= normal * (uv0.x * comKey0);
    vert.xyz -= normal * (uv0.y * comKey1);
    vert.xyz -= normal * (uv0.x * comKey2);
    vert.xyz -= normal * (uv0.y * comKey3);

    vert.xyz -= normal * (uv1.y * comKey4);
    vert.xyz -= normal * (uv1.x * comKey5);
    vert.xyz -= normal * (uv1.y * comKey6);
    vert.xyz -= normal * (uv1.x * comKey7);
    
    return vert;
}
