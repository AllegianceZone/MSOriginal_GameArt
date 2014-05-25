xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-bounding_model {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-tbound1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh tbound1 {
 49;
 -7.339864;2.712145;-34.868603;,
 7.340360;2.715508;35.491882;,
 -23.258614;-4.988416;30.559891;,
 2.740426;-12.752311;31.859732;,
 -2.740429;-12.752359;-31.858345;,
 -32.886040;9.630312;-0.470510;,
 32.886017;9.630344;0.471867;,
 -0.000013;12.103768;-31.719948;,
 7.286195;2.712143;-34.868603;,
 -26.617805;1.897896;26.618481;,
 -0.000013;12.103817;31.721298;,
 -7.285699;2.719250;35.491879;,
 26.617790;1.897882;-26.617115;,
 30.559198;-4.988433;-23.257921;,
 23.258606;-4.988441;-30.558514;,
 -30.559208;-4.988422;23.259300;,
 28.739460;-4.614257;28.740154;,
 27.560167;3.496944;27.560860;,
 -28.739470;-4.614329;-28.738777;,
 -27.560183;3.496877;-27.559490;,
 0.000016;-49.122757;6.367724;,
 -6.366985;-49.122765;0.000722;,
 0.000015;-49.122768;-6.366278;,
 6.367017;-49.122761;0.000723;,
 -10.957302;-26.796349;0.000706;,
 10.957314;-26.796337;0.000707;,
 0.000006;-26.796352;-10.956601;,
 0.000006;-26.796337;10.958014;,
 -0.000022;30.519928;-4.516433;,
 -0.000022;30.519932;4.517759;,
 -4.517118;30.519928;0.000663;,
 4.517074;30.519932;0.000663;,
 23.470106;16.211670;-9.720964;,
 35.009258;2.678741;-7.037106;,
 35.594780;-1.343272;-7.039883;,
 7.289577;-1.375621;-35.453171;,
 -7.343593;-1.375619;-35.453171;,
 -23.470140;16.211647;-9.720967;,
 -35.141800;2.682391;-6.982440;,
 -35.727314;-1.339622;-6.986777;,
 -23.470137;16.211662;9.722311;,
 -35.141796;2.678743;7.643618;,
 -35.727318;-1.343270;7.646393;,
 -7.290035;-1.368363;36.077396;,
 7.343136;-1.372107;36.077400;,
 23.470110;16.211685;9.722314;,
 35.009254;2.682390;7.588953;,
 35.594772;-1.339622;7.593287;,
 -0.000027;40.400124;0.000655;;

 69;
 3;16,27,25;,
 4;17,16,47,46;,
 4;1,44,16,17;,
 4;23,22,26,25;,
 3;45,10,17;,
 4;31,29,10,45;,
 3;48,29,31;,
 4;33,46,47,34;,
 3;3,2,27;,
 3;43,2,3;,
 4;1,11,43,44;,
 3;10,1,17;,
 3;10,11,1;,
 4;20,23,25,27;,
 3;45,17,6;,
 4;2,15,24,27;,
 4;13,12,33,34;,
 3;9,15,2;,
 4;12,14,35,8;,
 3;10,40,9;,
 4;29,30,40,10;,
 3;48,30,29;,
 3;13,16,25;,
 3;15,18,24;,
 4;42,39,18,15;,
 4;41,38,39,42;,
 3;5,19,38;,
 3;37,19,5;,
 3;30,37,40;,
 3;31,45,32;,
 3;18,26,24;,
 4;18,19,0,36;,
 4;22,21,24,26;,
 4;19,18,39,38;,
 3;37,7,19;,
 4;30,28,7,37;,
 3;48,28,30;,
 4;34,47,16,13;,
 3;4,14,26;,
 3;35,14,4;,
 4;0,8,35,36;,
 3;7,0,19;,
 3;7,8,0;,
 4;21,20,27,24;,
 3;6,17,46;,
 4;21,22,23,20;,
 4;14,13,25,26;,
 4;9,2,43,11;,
 3;12,13,14;,
 4;15,9,41,42;,
 3;7,32,12;,
 4;28,31,32,7;,
 3;48,31,28;,
 3;11,10,9;,
 3;8,7,12;,
 3;6,12,32;,
 3;32,45,6;,
 3;33,12,6;,
 3;6,46,33;,
 3;41,9,5;,
 3;38,41,5;,
 3;5,9,40;,
 3;40,37,5;,
 3;26,18,4;,
 3;4,18,36;,
 3;36,35,4;,
 3;3,16,44;,
 3;3,44,43;,
 3;27,16,3;;

 MeshNormals {
  49;
  -0.154192;0.286591;-0.945564;,
  0.164042;0.315295;0.934708;,
  -0.453259;-0.409896;0.791543;,
  0.021364;-0.605523;0.795541;,
  -0.021931;-0.579125;-0.814944;,
  -0.792472;0.609574;0.020187;,
  0.798374;0.601844;-0.019551;,
  0.021146;0.694570;-0.719114;,
  0.184742;0.321567;-0.928690;,
  -0.643774;0.469153;0.604525;,
  -0.020988;0.713327;0.700517;,
  -0.195384;0.346361;0.917529;,
  0.645128;0.460570;-0.609659;,
  0.799425;-0.488375;-0.349870;,
  0.445339;-0.397069;-0.802502;,
  -0.796126;-0.490902;0.353833;,
  0.615941;-0.570506;0.543267;,
  0.629984;0.524341;0.572875;,
  -0.612082;-0.566738;-0.551510;,
  -0.627667;0.516043;-0.582867;,
  0.000000;-0.677112;0.735880;,
  -0.735879;-0.677113;0.000001;,
  0.000000;-0.677113;-0.735879;,
  0.735880;-0.677112;0.000001;,
  -0.754903;-0.655827;-0.003456;,
  0.754904;-0.655826;0.003457;,
  -0.006789;-0.732575;-0.680652;,
  0.006790;-0.732574;0.680653;,
  -0.000000;0.678776;-0.734345;,
  -0.000000;0.678777;0.734344;,
  -0.668661;0.743567;-0.000001;,
  0.668660;0.743568;-0.000001;,
  0.561806;0.774157;-0.291642;,
  0.925317;0.332329;-0.182608;,
  0.973204;-0.180475;-0.142487;,
  0.142666;-0.088695;-0.985789;,
  -0.143289;-0.096289;-0.984986;,
  -0.538780;0.798566;-0.268345;,
  -0.943415;0.292882;-0.155529;,
  -0.966257;-0.216682;-0.139274;,
  -0.561807;0.774157;0.291640;,
  -0.919082;0.345953;0.188692;,
  -0.971212;-0.185133;0.149913;,
  -0.154735;-0.118030;0.980880;,
  0.153952;-0.120775;0.980669;,
  0.538779;0.798567;0.268343;,
  0.943833;0.290911;0.156687;,
  0.966585;-0.214489;0.140386;,
  -0.000000;1.000000;-0.000001;;

  69;
  3;16,27,25;,
  4;17,16,47,46;,
  4;1,44,16,17;,
  4;23,22,26,25;,
  3;45,10,17;,
  4;31,29,10,45;,
  3;48,29,31;,
  4;33,46,47,34;,
  3;3,2,27;,
  3;43,2,3;,
  4;1,11,43,44;,
  3;10,1,17;,
  3;10,11,1;,
  4;20,23,25,27;,
  3;45,17,6;,
  4;2,15,24,27;,
  4;13,12,33,34;,
  3;9,15,2;,
  4;12,14,35,8;,
  3;10,40,9;,
  4;29,30,40,10;,
  3;48,30,29;,
  3;13,16,25;,
  3;15,18,24;,
  4;42,39,18,15;,
  4;41,38,39,42;,
  3;5,19,38;,
  3;37,19,5;,
  3;30,37,40;,
  3;31,45,32;,
  3;18,26,24;,
  4;18,19,0,36;,
  4;22,21,24,26;,
  4;19,18,39,38;,
  3;37,7,19;,
  4;30,28,7,37;,
  3;48,28,30;,
  4;34,47,16,13;,
  3;4,14,26;,
  3;35,14,4;,
  4;0,8,35,36;,
  3;7,0,19;,
  3;7,8,0;,
  4;21,20,27,24;,
  3;6,17,46;,
  4;21,22,23,20;,
  4;14,13,25,26;,
  4;9,2,43,11;,
  3;12,13,14;,
  4;15,9,41,42;,
  3;7,32,12;,
  4;28,31,32,7;,
  3;48,31,28;,
  3;11,10,9;,
  3;8,7,12;,
  3;6,12,32;,
  3;32,45,6;,
  3;33,12,6;,
  3;6,46,33;,
  3;41,9,5;,
  3;38,41,5;,
  3;5,9,40;,
  3;40,37,5;,
  3;26,18,4;,
  3;4,18,36;,
  3;36,35,4;,
  3;3,16,44;,
  3;3,44,43;,
  3;27,16,3;;
 }
}
}
}
AnimationSet {
 Animation anim-bounding_model {
  {frm-bounding_model}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
}
