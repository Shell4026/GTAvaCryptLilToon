
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
float decodeKey0 = (_BitKey0 + 0.4793479) * (_BitKey1 + 0.8813905) * (_BitKey2 + 1.579604) * (_BitKey3 + 1.391571);
float decodeKey1 = (_BitKey4 + 0.9494525) * (_BitKey5 + 0.6293277) * (_BitKey6 + 1.307086) * (_BitKey7 + 0.701439);
float decodeKey2 = (_BitKey8 + 1.674852) * (_BitKey9 + 1.441953) * (_BitKey10 + 0.4684336) * (_BitKey11 + 0.462456);
float decodeKey3 = (_BitKey12 + 0.5686933) * (_BitKey13 + 1.883096) * (_BitKey14 + 1.275829) * (_BitKey15 + 1.593457);
float decodeKey4 = (_BitKey16 + 0.4967241) * (_BitKey17 + 0.3631766) * (_BitKey18 + 0.02527356) * (_BitKey19 + 0.2466571);
float decodeKey5 = (_BitKey20 + 1.31886) * (_BitKey21 + 0.8437427) * (_BitKey22 + 0.1824119) * (_BitKey23 + 1.03846);
float decodeKey6 = (_BitKey24 + 0.3056419) * (_BitKey25 + 0.3382721) * (_BitKey26 + 0.1709676) * (_BitKey27 + 1.126886);
float decodeKey7 = (_BitKey28 + 1.460117) * (_BitKey29 + 1.944906) * (_BitKey30 + 1.79013) * (_BitKey31 + 1.618402);
float comKey0 = sin(decodeKey1 + decodeKey5) * 0.4266436 * cos(decodeKey7 - decodeKey2);
float comKey1 = cos(decodeKey5 + decodeKey6) * 0.4848857 * sin(decodeKey2 - decodeKey3);
float comKey2 = sin(decodeKey0 - decodeKey3) * 0.336843 * cos(decodeKey4 - decodeKey1);
float comKey3 = cos(decodeKey6 - decodeKey5) * 0.1470232 * sin(decodeKey0 - decodeKey4);
float comKey4 = sin(decodeKey0 - decodeKey3) * 0.3949397 * sin(decodeKey7 + decodeKey7);
float comKey5 = cos(decodeKey1 - decodeKey6) * 0.2417476 * sin(decodeKey4 + decodeKey1);
float comKey6 = cos(decodeKey3 + decodeKey0) * 1.83292 * sin(decodeKey2 - decodeKey2);
float comKey7 = cos(decodeKey4 - decodeKey5) * 1.590295 * sin(decodeKey6 + decodeKey7);
  
    // AvaCrypt Randomly Generated End
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
