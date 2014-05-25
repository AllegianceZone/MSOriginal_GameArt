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

Frame frm-ss14 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,-5.786036,0.000000,1.000000;;
 }
Frame frm-fuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,1.176266,1.000000;;
 }
Mesh fuselg {
 59;
 2.236501;-0.652098;-0.002774;,
 1.118250;-0.652098;-1.939641;,
 1.118250;-0.652098;-1.939641;,
 -1.118250;-0.652098;-1.939641;,
 -2.236501;-0.652098;-0.002774;,
 -2.236501;-0.652098;-0.002774;,
 -1.118250;-0.652098;1.934092;,
 1.118250;-0.652098;1.934092;,
 1.118250;-0.652098;1.934092;,
 2.236501;9.932323;-0.002774;,
 1.118250;9.932323;-1.939641;,
 1.118250;9.932323;-1.939641;,
 -1.118250;9.932323;-1.939641;,
 -2.236501;9.932323;-0.002774;,
 -2.236501;9.932323;-0.002774;,
 -1.118250;9.932323;1.934092;,
 1.118250;9.932323;1.934092;,
 1.118250;9.932323;1.934092;,
 -2.236501;4.972933;-0.002774;,
 -2.236501;1.827600;-0.002774;,
 -2.236501;7.452629;-0.002774;,
 1.118250;4.972933;-1.939641;,
 1.118250;7.452629;-1.939641;,
 1.118250;1.827600;-1.939641;,
 1.118250;4.972932;1.934092;,
 1.118250;1.827600;1.934092;,
 1.118250;7.452629;1.934092;,
 2.236501;1.827600;-0.002774;,
 2.236501;7.452629;-0.002774;,
 2.236501;4.972933;-0.002774;,
 1.118250;7.452629;1.934092;,
 1.118250;1.827600;1.934092;,
 1.118250;4.972932;1.934092;,
 1.118250;1.827600;-1.939641;,
 1.118250;7.452629;-1.939641;,
 1.118250;4.972933;-1.939641;,
 -1.118250;1.827600;1.934092;,
 -1.118250;7.452629;1.934092;,
 -1.118250;4.972933;1.934092;,
 -2.236501;7.452629;-0.002774;,
 -2.236501;1.827600;-0.002774;,
 -2.236501;4.972933;-0.002774;,
 -1.118250;1.827600;-1.939641;,
 -1.118250;7.452629;-1.939641;,
 -1.118250;4.972933;-1.939641;,
 0.000000;-0.652098;-0.002775;,
 0.000000;9.932323;-0.002774;,
 1.118250;9.932323;1.934092;,
 -1.118250;9.932323;1.934092;,
 -2.236501;9.932323;-0.002774;,
 -1.118250;9.932323;-1.939641;,
 1.118250;9.932323;-1.939641;,
 2.236501;9.932323;-0.002774;,
 1.118250;-0.652098;1.934092;,
 -1.118250;-0.652098;1.934092;,
 -2.236501;-0.652098;-0.002774;,
 -1.118250;-0.652098;-1.939641;,
 1.118250;-0.652098;-1.939641;,
 2.236501;-0.652098;-0.002774;;

 60;
 3;8,0,27;,
 3;25,8,27;,
 3;0,2,23;,
 3;27,0,23;,
 3;52,47,30;,
 3;28,52,30;,
 3;28,30,32;,
 3;29,28,32;,
 3;51,52,28;,
 3;34,51,28;,
 3;35,29,27;,
 3;23,35,27;,
 3;29,32,25;,
 3;27,29,25;,
 3;29,35,34;,
 3;28,29,34;,
 3;3,5,19;,
 3;42,3,19;,
 3;43,22,21;,
 3;44,43,21;,
 3;13,50,43;,
 3;20,13,43;,
 3;1,3,42;,
 3;33,1,42;,
 3;50,10,22;,
 3;43,50,22;,
 3;18,44,42;,
 3;19,18,42;,
 3;44,21,33;,
 3;42,44,33;,
 3;20,43,44;,
 3;18,20,44;,
 3;4,6,36;,
 3;40,4,36;,
 3;48,49,39;,
 3;37,48,39;,
 3;24,38,36;,
 3;31,24,36;,
 3;37,39,41;,
 3;38,37,41;,
 3;38,41,40;,
 3;36,38,40;,
 3;26,37,38;,
 3;24,26,38;,
 3;16,48,37;,
 3;26,16,37;,
 3;6,7,31;,
 3;36,6,31;,
 3;45,54,55;,
 3;46,11,12;,
 3;46,15,17;,
 3;14,15,46;,
 3;9,11,46;,
 3;46,17,9;,
 3;12,14,46;,
 3;45,57,58;,
 3;56,57,45;,
 3;53,54,45;,
 3;58,53,45;,
 3;45,55,56;;

 MeshMaterialList {
  2;
  60;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;0.994350;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  59;
  0.783349;-0.603023;-0.150756;,
  0.261116;-0.603023;-0.753778;,
  0.261116;-0.603023;-0.753778;,
  -0.544705;-0.554700;-0.628971;,
  -0.783349;-0.603023;0.150756;,
  -0.783349;-0.603023;0.150756;,
  -0.272352;-0.554700;0.786214;,
  0.544705;-0.554700;0.628971;,
  0.544705;-0.554700;0.628971;,
  0.783349;0.603023;0.150756;,
  0.522233;0.603023;-0.603023;,
  0.522233;0.603023;-0.603023;,
  -0.272352;0.554700;-0.786214;,
  -0.783349;0.603023;-0.150756;,
  -0.783349;0.603023;-0.150756;,
  -0.544705;0.554700;0.628971;,
  0.272352;0.554700;0.786214;,
  0.272352;0.554700;0.786214;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  0.500000;0.000000;-0.866025;,
  0.500000;0.000000;-0.866025;,
  0.500000;0.000000;-0.866025;,
  0.500000;0.000000;0.866025;,
  0.500000;0.000000;0.866025;,
  0.500000;0.000000;0.866025;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  1.000000;0.000000;0.000000;,
  0.500000;0.000000;0.866025;,
  0.500000;0.000000;0.866025;,
  0.500000;0.000000;0.866025;,
  0.500000;0.000000;-0.866025;,
  0.500000;0.000000;-0.866025;,
  0.500000;0.000000;-0.866025;,
  -0.500000;0.000000;0.866025;,
  -0.500000;0.000000;0.866025;,
  -0.500000;0.000000;0.866025;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.500000;0.000000;-0.866025;,
  -0.500000;0.000000;-0.866025;,
  -0.500000;0.000000;-0.866025;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.272352;0.554700;0.786214;,
  -0.544705;0.554700;0.628971;,
  -0.783349;0.603023;-0.150756;,
  -0.272352;0.554700;-0.786214;,
  0.522233;0.603023;-0.603023;,
  0.783349;0.603023;0.150756;,
  0.544705;-0.554700;0.628971;,
  -0.272352;-0.554700;0.786214;,
  -0.783349;-0.603023;0.150756;,
  -0.544705;-0.554700;-0.628971;,
  0.261116;-0.603023;-0.753778;,
  0.783349;-0.603023;-0.150756;;

  60;
  3;8,0,27;,
  3;25,8,27;,
  3;0,2,23;,
  3;27,0,23;,
  3;52,47,30;,
  3;28,52,30;,
  3;28,30,32;,
  3;29,28,32;,
  3;51,52,28;,
  3;34,51,28;,
  3;35,29,27;,
  3;23,35,27;,
  3;29,32,25;,
  3;27,29,25;,
  3;29,35,34;,
  3;28,29,34;,
  3;3,5,19;,
  3;42,3,19;,
  3;43,22,21;,
  3;44,43,21;,
  3;13,50,43;,
  3;20,13,43;,
  3;1,3,42;,
  3;33,1,42;,
  3;50,10,22;,
  3;43,50,22;,
  3;18,44,42;,
  3;19,18,42;,
  3;44,21,33;,
  3;42,44,33;,
  3;20,43,44;,
  3;18,20,44;,
  3;4,6,36;,
  3;40,4,36;,
  3;48,49,39;,
  3;37,48,39;,
  3;24,38,36;,
  3;31,24,36;,
  3;37,39,41;,
  3;38,37,41;,
  3;38,41,40;,
  3;36,38,40;,
  3;26,37,38;,
  3;24,26,38;,
  3;16,48,37;,
  3;26,16,37;,
  3;6,7,31;,
  3;36,6,31;,
  3;45,54,55;,
  3;46,11,12;,
  3;46,15,17;,
  3;14,15,46;,
  3;9,11,46;,
  3;46,17,9;,
  3;12,14,46;,
  3;45,57,58;,
  3;56,57,45;,
  3;53,54,45;,
  3;58,53,45;,
  3;45,55,56;;
 }
 MeshTextureCoords {
 59;
 0.326782;0.992188;,
 0.617188;0.992188;,
 0.033814;0.992188;,
 0.355202;0.992188;,
 0.617188;0.992188;,
 0.062233;0.992188;,
 0.341314;0.992188;,
 0.048345;0.992188;,
 0.617188;0.992188;,
 0.968750;0.253906;,
 0.617188;0.062500;,
 0.890625;0.390625;,
 0.734375;0.390625;,
 0.062233;0.062500;,
 0.656250;0.253906;,
 0.734375;0.117188;,
 0.048345;0.062500;,
 0.890625;0.117188;,
 0.062233;0.498110;,
 0.062233;0.774382;,
 0.062233;0.280305;,
 0.617188;0.498110;,
 0.617188;0.280305;,
 0.033814;0.774382;,
 0.048345;0.498110;,
 0.617188;0.774382;,
 0.048345;0.280305;,
 0.326782;0.774382;,
 0.326782;0.280305;,
 0.326782;0.498110;,
 0.617188;0.280305;,
 0.048345;0.774382;,
 0.617188;0.498110;,
 0.617188;0.774382;,
 0.033814;0.280305;,
 0.033814;0.498110;,
 0.341314;0.774382;,
 0.341314;0.280305;,
 0.341314;0.498110;,
 0.617187;0.280305;,
 0.617188;0.774382;,
 0.617187;0.498110;,
 0.355202;0.774382;,
 0.355202;0.280305;,
 0.355202;0.498110;,
 0.812500;0.253906;,
 0.812500;0.253906;,
 0.617188;0.062500;,
 0.341314;0.062500;,
 0.617187;0.062500;,
 0.355202;0.062500;,
 0.033814;0.062500;,
 0.326782;0.062500;,
 0.890625;0.117188;,
 0.734375;0.117188;,
 0.656250;0.253906;,
 0.734375;0.390625;,
 0.890625;0.390625;,
 0.968750;0.253906;;
 }
}
Frame frm-mfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,8.335571,-0.027190,1.000000;;
 }
Mesh mfuselg {
 48;
 2.668050;-4.444262;-0.026557;,
 1.334025;-4.444262;-2.337156;,
 1.334025;-4.444262;-2.337156;,
 -1.334025;-4.444262;-2.337156;,
 -2.668050;-4.444262;-0.026556;,
 -2.668050;-4.444262;-0.026556;,
 -1.334025;-4.444262;2.284042;,
 1.334025;-4.444262;2.284042;,
 1.334025;-4.444262;2.284042;,
 2.668050;-2.968719;-0.026557;,
 1.334025;-2.968719;-2.337156;,
 1.334025;-2.968719;-2.337156;,
 -1.334025;-2.968719;-2.337156;,
 -2.668050;-2.968719;-0.026556;,
 -2.668050;-2.968719;-0.026556;,
 -1.334025;-2.968719;2.284042;,
 1.334025;-2.968719;2.284042;,
 1.334025;-2.968719;2.284042;,
 2.001037;-4.444262;1.128743;,
 -2.001037;-2.968719;1.128743;,
 -2.001037;-2.968719;1.128743;,
 -2.217816;-4.444262;-0.025229;,
 -1.108908;-4.444262;-1.945914;,
 1.108908;-4.444262;-1.945915;,
 -1.108908;-4.444262;1.895456;,
 1.108908;-4.444262;1.895456;,
 2.217816;-4.444262;-0.025229;,
 0.000000;-4.444262;-0.026557;,
 2.001037;-4.444262;1.128743;,
 2.217816;-2.968719;-0.025229;,
 1.108908;-2.968719;1.895456;,
 1.108908;-2.968719;-1.945915;,
 -1.108908;-2.968719;1.895456;,
 -1.108908;-2.968719;-1.945914;,
 -2.217816;-2.968719;-0.025229;,
 0.000000;-2.968719;-0.026557;,
 1.334025;-2.968719;2.284042;,
 -1.334025;-2.968719;2.284042;,
 -2.668050;-2.968719;-0.026556;,
 -1.334025;-2.968719;-2.337156;,
 1.334025;-2.968719;-2.337156;,
 2.668050;-2.968719;-0.026557;,
 1.334025;-4.444262;2.284042;,
 -1.334025;-4.444262;2.284042;,
 -2.668050;-4.444262;-0.026556;,
 -1.334025;-4.444262;-2.337156;,
 1.334025;-4.444262;-2.337156;,
 2.668050;-4.444262;-0.026557;;

 52;
 3;0,9,17;,
 3;18,0,17;,
 3;8,18,17;,
 3;2,11,9;,
 3;0,2,9;,
 3;3,12,10;,
 3;1,3,10;,
 3;5,14,12;,
 3;3,5,12;,
 3;6,15,19;,
 3;4,6,19;,
 3;13,4,19;,
 3;7,16,15;,
 3;6,7,15;,
 3;22,27,21;,
 3;34,35,33;,
 3;29,35,30;,
 3;40,39,33;,
 3;31,40,33;,
 3;41,40,31;,
 3;29,41,31;,
 3;37,36,30;,
 3;32,37,30;,
 3;20,37,32;,
 3;38,20,32;,
 3;34,38,32;,
 3;39,38,34;,
 3;33,39,34;,
 3;32,35,34;,
 3;30,35,32;,
 3;36,41,29;,
 3;30,36,29;,
 3;31,35,29;,
 3;33,35,31;,
 3;25,27,26;,
 3;43,44,21;,
 3;24,43,21;,
 3;24,27,25;,
 3;46,47,26;,
 3;23,46,26;,
 3;23,27,22;,
 3;26,27,23;,
 3;28,42,25;,
 3;47,28,25;,
 3;26,47,25;,
 3;42,43,24;,
 3;25,42,24;,
 3;21,27,24;,
 3;44,45,22;,
 3;21,44,22;,
 3;45,46,23;,
 3;22,45,23;;

 MeshMaterialList {
  2;
  52;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  48;
  0.649519;-0.750000;0.125000;,
  0.433013;-0.750000;-0.500000;,
  0.433013;-0.750000;-0.500000;,
  -0.231455;-0.707107;-0.668153;,
  -0.755929;-0.654654;0.000000;,
  -0.755929;-0.654654;0.000000;,
  -0.462910;-0.707107;0.534523;,
  0.231455;-0.707107;0.668153;,
  0.231455;-0.707107;0.668153;,
  0.649519;0.750000;-0.125000;,
  0.216506;0.750000;-0.625000;,
  0.216506;0.750000;-0.625000;,
  -0.462910;0.707107;-0.534522;,
  -0.500000;0.866025;0.000000;,
  -0.500000;0.866025;0.000000;,
  -0.231455;0.707107;0.668153;,
  0.576461;0.600000;0.554700;,
  0.576461;0.600000;0.554700;,
  0.612372;-0.707107;0.353553;,
  -0.720577;0.554700;0.416025;,
  -0.720577;0.554700;0.416025;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.612372;-0.707107;0.353553;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.576461;0.600000;0.554700;,
  -0.231455;0.707107;0.668153;,
  -0.500000;0.866025;0.000000;,
  -0.462910;0.707107;-0.534522;,
  0.216506;0.750000;-0.625000;,
  0.649519;0.750000;-0.125000;,
  0.231455;-0.707107;0.668153;,
  -0.462910;-0.707107;0.534523;,
  -0.755929;-0.654654;0.000000;,
  -0.231455;-0.707107;-0.668153;,
  0.433013;-0.750000;-0.500000;,
  0.649519;-0.750000;0.125000;;

  52;
  3;0,9,17;,
  3;18,0,17;,
  3;8,18,17;,
  3;2,11,9;,
  3;0,2,9;,
  3;3,12,10;,
  3;1,3,10;,
  3;5,14,12;,
  3;3,5,12;,
  3;6,15,19;,
  3;4,6,19;,
  3;13,4,19;,
  3;7,16,15;,
  3;6,7,15;,
  3;22,27,21;,
  3;34,35,33;,
  3;29,35,30;,
  3;40,39,33;,
  3;31,40,33;,
  3;41,40,31;,
  3;29,41,31;,
  3;37,36,30;,
  3;32,37,30;,
  3;20,37,32;,
  3;38,20,32;,
  3;34,38,32;,
  3;39,38,34;,
  3;33,39,34;,
  3;32,35,34;,
  3;30,35,32;,
  3;36,41,29;,
  3;30,36,29;,
  3;31,35,29;,
  3;33,35,31;,
  3;25,27,26;,
  3;43,44,21;,
  3;24,43,21;,
  3;24,27,25;,
  3;46,47,26;,
  3;23,46,26;,
  3;23,27,22;,
  3;26,27,23;,
  3;28,42,25;,
  3;47,28,25;,
  3;26,47,25;,
  3;42,43,24;,
  3;25,42,24;,
  3;21,27,24;,
  3;44,45,22;,
  3;21,44,22;,
  3;45,46,23;,
  3;22,45,23;;
 }
 MeshTextureCoords {
 48;
 0.317793;0.992188;,
 0.617187;0.992188;,
 0.031250;0.992188;,
 0.342716;0.992188;,
 0.614495;0.992188;,
 0.049747;0.992188;,
 0.321526;0.992188;,
 0.031250;0.992188;,
 0.610762;0.992188;,
 0.317793;0.945312;,
 0.617187;0.945312;,
 0.031250;0.945312;,
 0.342716;0.945312;,
 0.614495;0.945312;,
 0.049747;0.945312;,
 0.321526;0.945312;,
 0.031250;0.945312;,
 0.610762;0.945312;,
 0.464278;0.992188;,
 0.468011;0.945312;,
 0.647461;0.421875;,
 0.642700;0.632812;,
 0.667053;0.632812;,
 0.715759;0.632812;,
 0.667053;0.632812;,
 0.715759;0.632812;,
 0.740112;0.632812;,
 0.691406;0.632812;,
 0.735352;0.632812;,
 0.740112;0.421875;,
 0.715759;0.421875;,
 0.715759;0.421875;,
 0.667053;0.421875;,
 0.667053;0.421875;,
 0.642700;0.421875;,
 0.691406;0.421875;,
 0.720703;0.421875;,
 0.662109;0.421875;,
 0.632812;0.421875;,
 0.662109;0.421875;,
 0.720703;0.421875;,
 0.750000;0.421875;,
 0.720703;0.632812;,
 0.662109;0.632812;,
 0.632812;0.632812;,
 0.662109;0.632812;,
 0.720703;0.632812;,
 0.750000;0.632812;;
 }
}
Frame frm-doccon2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,-3.736245,-2.281121,1.000000;;
 }
}
}
Frame frm-tfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,9.885273,0.003908,1.000000;;
 }
Mesh tfuselg {
 24;
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;0.510300;;

 12;
 3;7,3,1;,
 3;5,7,1;,
 3;13,9,10;,
 3;14,13,10;,
 3;22,18,19;,
 3;23,22,19;,
 3;16,20,21;,
 3;17,16,21;,
 3;15,11,2;,
 3;6,15,2;,
 3;4,0,8;,
 3;12,4,8;;

 MeshMaterialList {
  3;
  12;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.816497;-0.408248;0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.333333;-0.666667;-0.666667;,
  -0.333333;-0.666667;-0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  0.333333;-0.666667;0.666667;,
  0.816497;-0.408248;-0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.816497;0.408248;0.408248;,
  0.816497;0.408248;0.408248;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;0.666667;,
  -0.333333;-0.666667;-0.666667;,
  -0.816497;-0.408248;0.408248;;

  12;
  3;7,3,1;,
  3;5,7,1;,
  3;13,9,10;,
  3;14,13,10;,
  3;22,18,19;,
  3;23,22,19;,
  3;16,20,21;,
  3;17,16,21;,
  3;15,11,2;,
  3;6,15,2;,
  3;4,0,8;,
  3;12,4,8;;
 }
 MeshTextureCoords {
 24;
 0.765625;0.578125;,
 0.112520;0.015625;,
 0.000000;0.000000;,
 -0.011281;0.024684;,
 0.765625;0.492188;,
 0.309031;0.030004;,
 0.000000;0.000000;,
 0.185229;0.039062;,
 0.851562;0.578125;,
 0.068156;0.036660;,
 0.191958;0.045719;,
 0.000000;0.000000;,
 0.851562;0.492188;,
 0.264667;0.022281;,
 0.388469;0.031340;,
 0.000000;0.000000;,
 0.178567;0.039062;,
 0.303906;0.029891;,
 0.360281;0.024796;,
 0.234942;0.015625;,
 -0.016406;0.024796;,
 0.108933;0.015625;,
 0.165308;0.039062;,
 0.039969;0.029891;;
 }
}
Frame frm-doccon1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,-0.003908,-0.509286,1.000000;;
 }
}
}
Frame frm-sphere1 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
-2.303008,0.022368,0.000000,1.000000;;
 }
Mesh sphere1 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-sphere2 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
2.299055,0.022368,0.000000,1.000000;;
 }
Mesh sphere2 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-sphere3 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
2.299055,9.929020,0.000000,1.000000;;
 }
Mesh sphere3 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-sphere4 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
-2.304485,9.929020,0.000000,1.000000;;
 }
Mesh sphere4 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-tfuselg5 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,-0.665733,0.003908,1.000000;;
 }
Mesh tfuselg5 {
 24;
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;-0.510300;;

 12;
 3;1,3,7;,
 3;1,7,5;,
 3;10,9,13;,
 3;10,13,14;,
 3;19,18,22;,
 3;19,22,23;,
 3;21,20,16;,
 3;21,16,17;,
 3;2,11,15;,
 3;2,15,6;,
 3;8,0,4;,
 3;8,4,12;;

 MeshMaterialList {
  3;
  12;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.816497;-0.408248;-0.408248;,
  -0.816497;-0.408248;-0.408248;,
  -0.333333;-0.666667;0.666667;,
  -0.333333;-0.666667;0.666667;,
  -0.333333;0.666667;-0.666667;,
  -0.333333;0.666667;-0.666667;,
  -0.816497;0.408248;0.408248;,
  -0.816497;0.408248;0.408248;,
  0.333333;-0.666667;-0.666667;,
  0.333333;-0.666667;-0.666667;,
  0.816497;-0.408248;0.408248;,
  0.816497;-0.408248;0.408248;,
  0.816497;0.408248;-0.408248;,
  0.816497;0.408248;-0.408248;,
  0.333333;0.666667;0.666667;,
  0.333333;0.666667;0.666667;,
  0.333333;0.666667;0.666667;,
  0.816497;0.408248;-0.408248;,
  0.816497;-0.408248;0.408248;,
  0.333333;-0.666667;-0.666667;,
  -0.816497;0.408248;0.408248;,
  -0.333333;0.666667;-0.666667;,
  -0.333333;-0.666667;0.666667;,
  -0.816497;-0.408248;-0.408248;;

  12;
  3;1,3,7;,
  3;1,7,5;,
  3;10,9,13;,
  3;10,13,14;,
  3;19,18,22;,
  3;19,22,23;,
  3;21,20,16;,
  3;21,16,17;,
  3;2,11,15;,
  3;2,15,6;,
  3;8,0,4;,
  3;8,4,12;;
 }
 MeshTextureCoords {
 24;
 0.765625;0.578125;,
 -0.011281;0.024684;,
 0.000000;0.000000;,
 0.112520;0.015625;,
 0.765625;0.492188;,
 0.185229;0.039062;,
 0.000000;0.000000;,
 0.309031;0.030004;,
 0.851562;0.578125;,
 0.191958;0.045719;,
 0.068156;0.036660;,
 0.000000;0.000000;,
 0.851562;0.492188;,
 0.388469;0.031340;,
 0.264667;0.022281;,
 0.000000;0.000000;,
 0.303906;0.029891;,
 0.178567;0.039062;,
 0.234942;0.015625;,
 0.360281;0.024796;,
 0.108933;0.015625;,
 -0.016406;0.024796;,
 0.039969;0.029891;,
 0.165308;0.039062;;
 }
}
}
}
}
AnimationSet {
 Animation anim-ss14 {
  {frm-ss14}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -5.786036, 0.000000;;,
  30; 3; 0.000000, -5.786036, 0.000000;;;
  }
 }
 Animation anim-fuselg {
  {frm-fuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -1.176266;;,
  30; 3; 0.000000, 0.000000, -1.176266;;;
  }
 }
 Animation anim-mfuselg {
  {frm-mfuselg}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 8.335571, 0.027190;;,
  30; 3; 0.000000, 8.335571, 0.027190;;;
  }
 }
 Animation anim-doccon2 {
  {frm-doccon2}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 1.000000, 0.000000, 0.000000;;,  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  30; 4; 0.000000, 1.000000, 0.000000, 0.000000;;;  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -3.736245, 2.281121;;,
  30; 3; 0.000000, -3.736245, 2.281121;;;
  }
 }
 Animation anim-tfuselg {
  {frm-tfuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 9.885273, -0.003908;;,
  30; 3; 0.000000, 9.885273, -0.003908;;;
  }
 }
 Animation anim-doccon1 {
  {frm-doccon1}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 1.000000, 0.000000, 0.000000;;,  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  30; 4; 0.000000, 1.000000, 0.000000, 0.000000;;;  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.003908, 0.509286;;,
  30; 3; 0.000000, -0.003908, 0.509286;;;
  }
 }
 Animation anim-sphere1 {
  {frm-sphere1}
  AnimationKey {
  1;
  13;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.166252, 0.166252, 0.166252;;,
  3; 3; 0.332494, 0.332494, 0.332494;;,
  4; 3; 0.498736, 0.498736, 0.498736;;,
  6; 3; 0.166252, 0.166252, 0.166252;;,
  7; 3; 0.000010, 0.000010, 0.000010;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.166252, 0.166252, 0.166252;;,
  10; 3; 0.332494, 0.332494, 0.332494;;,
  11; 3; 0.498736, 0.498736, 0.498736;;,
  13; 3; 0.166252, 0.166252, 0.166252;;,
  14; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -2.303008, 0.022368, 0.000000;;,
  30; 3; -2.303008, 0.022368, 0.000000;;;
  }
 }
 Animation anim-sphere2 {
  {frm-sphere2}
  AnimationKey {
  1;
  13;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.166252, 0.166252, 0.166252;;,
  3; 3; 0.332494, 0.332494, 0.332494;;,
  4; 3; 0.498736, 0.498736, 0.498736;;,
  6; 3; 0.166252, 0.166252, 0.166252;;,
  7; 3; 0.000010, 0.000010, 0.000010;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.166252, 0.166252, 0.166252;;,
  10; 3; 0.332494, 0.332494, 0.332494;;,
  11; 3; 0.498736, 0.498736, 0.498736;;,
  13; 3; 0.166252, 0.166252, 0.166252;;,
  14; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 2.299055, 0.022368, 0.000000;;,
  30; 3; 2.299055, 0.022368, 0.000000;;;
  }
 }
 Animation anim-sphere3 {
  {frm-sphere3}
  AnimationKey {
  1;
  13;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.166252, 0.166252, 0.166252;;,
  3; 3; 0.332494, 0.332494, 0.332494;;,
  4; 3; 0.498736, 0.498736, 0.498736;;,
  6; 3; 0.166252, 0.166252, 0.166252;;,
  7; 3; 0.000010, 0.000010, 0.000010;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.166252, 0.166252, 0.166252;;,
  10; 3; 0.332494, 0.332494, 0.332494;;,
  11; 3; 0.498736, 0.498736, 0.498736;;,
  13; 3; 0.166252, 0.166252, 0.166252;;,
  14; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 2.299055, 9.929020, 0.000000;;,
  30; 3; 2.299055, 9.929020, 0.000000;;;
  }
 }
 Animation anim-sphere4 {
  {frm-sphere4}
  AnimationKey {
  1;
  13;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.166252, 0.166252, 0.166252;;,
  3; 3; 0.332494, 0.332494, 0.332494;;,
  4; 3; 0.498736, 0.498736, 0.498736;;,
  6; 3; 0.166252, 0.166252, 0.166252;;,
  7; 3; 0.000010, 0.000010, 0.000010;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.166252, 0.166252, 0.166252;;,
  10; 3; 0.332494, 0.332494, 0.332494;;,
  11; 3; 0.498736, 0.498736, 0.498736;;,
  13; 3; 0.166252, 0.166252, 0.166252;;,
  14; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -2.304485, 9.929020, 0.000000;;,
  30; 3; -2.304485, 9.929020, 0.000000;;;
  }
 }
 Animation anim-tfuselg5 {
  {frm-tfuselg5}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.665733, -0.003908;;,
  30; 3; 0.000000, -0.665733, -0.003908;;;
  }
 }
  }