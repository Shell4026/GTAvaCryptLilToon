
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

float2 modelDecode(float2 uv, float3 normal, float2 uv0, float2 uv1)
{
    if (!_EnableAvaCrypt) return uv;

    // AvaCrypt Randomly Generated Begin
float decodeKey0 = (_BitKey0 + 0.3374381) * (_BitKey1 + 0.3893292) * (_BitKey2 + 0.9696795) * (_BitKey3 + 1.66946);
float decodeKey1 = (_BitKey4 + 1.447287) * (_BitKey5 + 0.3701866) * (_BitKey6 + 0.5959519) * (_BitKey7 + 0.3314714);
float decodeKey2 = (_BitKey8 + 0.08744645) * (_BitKey9 + 0.1273584) * (_BitKey10 + 1.610839) * (_BitKey11 + 0.7453853);
float decodeKey3 = (_BitKey12 + 1.245067) * (_BitKey13 + 0.6881837) * (_BitKey14 + 0.91652) * (_BitKey15 + 1.355287);
float decodeKey4 = (_BitKey16 + 0.512529) * (_BitKey17 + 1.354631) * (_BitKey18 + 1.358611) * (_BitKey19 + 0.2567139);
float decodeKey5 = (_BitKey20 + 1.277374) * (_BitKey21 + 0.7269317) * (_BitKey22 + 0.5468479) * (_BitKey23 + 1.248418);
float decodeKey6 = (_BitKey24 + 0.3516891) * (_BitKey25 + 1.045764) * (_BitKey26 + 1.814614) * (_BitKey27 + 0.09671926);
float decodeKey7 = (_BitKey28 + 1.213774) * (_BitKey29 + 1.079363) * (_BitKey30 + 1.474131) * (_BitKey31 + 0.9118124);
float comKey0 = sin(decodeKey2 - decodeKey0) * 1.407048 * cos(decodeKey3 + decodeKey5);
float comKey1 = sin(decodeKey6 + decodeKey4) * 0.2337017 * cos(decodeKey1 - decodeKey0);
float comKey2 = sin(decodeKey1 + decodeKey4) * 1.755225 * cos(decodeKey1 - decodeKey3);
float comKey3 = sin(decodeKey6 + decodeKey0) * 1.256171 * cos(decodeKey3 - decodeKey5);
float comKey4 = sin(decodeKey1 - decodeKey7) * 1.943389 * cos(decodeKey6 - decodeKey3);
float comKey5 = sin(decodeKey5 + decodeKey2) * 1.997793 * cos(decodeKey0 - decodeKey7);
float comKey6 = cos(decodeKey7 - decodeKey6) * 0.9228159 * sin(decodeKey4 - decodeKey2);
float comKey7 = cos(decodeKey7 + decodeKey4) * 1.319906 * cos(decodeKey2 - decodeKey5);
  
    // AvaCrypt Randomly Generated End
    uv.xy *= 10.0f;
    uv.x -= (uv0.x * comKey0);
    uv.y -= (uv0.y * comKey1);
    uv.x -= (uv0.x * comKey2);
    uv.y -= (uv0.y * comKey3);

    uv.x -= (uv1.y * comKey4);
    uv.y -= (uv1.x * comKey5);
    uv.x -= (uv1.y * comKey6);
    uv.y -= (uv1.x * comKey7);

    return uv;
}
