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

Frame frm-utl22_1 {
  FrameTransformMatrix {
1.280000,0.000000,0.000000,0.000000,
0.000000,1.280000,0.000000,0.000000,
0.000000,0.000000,1.280000,0.000000,
0.000000,0.000000,0.011820,1.000000;;
 }
Frame frm-fuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh fuselg {
 72;
 0.119671;0.311520;0.021273;,
 0.119671;0.311520;0.021273;,
 0.119671;0.311520;0.021273;,
 -0.287633;-0.191022;0.436895;,
 -0.287633;-0.191022;0.436895;,
 -0.149552;-0.047430;-0.398982;,
 -0.149552;-0.047430;-0.398982;,
 -0.202169;0.308480;0.437014;,
 -0.202169;0.308480;0.437014;,
 -0.121146;0.310938;0.021053;,
 -0.121146;0.310938;0.021053;,
 -0.121146;0.310938;0.021053;,
 -0.149640;-0.186518;-0.398754;,
 -0.149640;-0.186518;-0.398754;,
 -0.156528;0.101870;-0.235774;,
 -0.156528;0.101870;-0.235774;,
 -0.121473;0.404025;0.438867;,
 -0.121473;0.404025;0.438867;,
 -0.088768;0.171060;-0.278206;,
 -0.088768;0.171060;-0.278206;,
 -0.088768;0.171060;-0.278206;,
 -0.091859;-0.013947;-0.466626;,
 -0.091859;-0.013947;-0.466626;,
 -0.091859;-0.013947;-0.466626;,
 -0.091789;-0.185208;-0.466632;,
 -0.091789;-0.185208;-0.466632;,
 0.197777;0.234694;0.057377;,
 0.197777;0.234694;0.057377;,
 0.286238;-0.189635;0.437419;,
 0.286238;-0.189635;0.437419;,
 0.151769;-0.046703;-0.398256;,
 0.151769;-0.046703;-0.398256;,
 0.199540;0.309451;0.437381;,
 0.199540;0.309451;0.437381;,
 -0.198945;0.233735;0.057015;,
 -0.198945;0.233735;0.057015;,
 0.151357;-0.185791;-0.398479;,
 0.151357;-0.185791;-0.398479;,
 0.156508;0.102626;-0.235488;,
 0.156508;0.102626;-0.235488;,
 0.118380;0.404604;0.439086;,
 0.118380;0.404604;0.439086;,
 0.088491;0.171488;-0.278044;,
 0.088491;0.171488;-0.278044;,
 0.088491;0.171488;-0.278044;,
 0.092833;-0.013500;-0.466457;,
 0.092833;-0.013500;-0.466457;,
 0.092833;-0.013500;-0.466457;,
 0.092903;-0.184761;-0.466100;,
 0.092903;-0.184761;-0.466100;,
 0.092903;-0.184761;-0.466100;,
 0.092833;-0.013500;-0.466457;,
 0.088491;0.171488;-0.278044;,
 0.118380;0.404604;0.439086;,
 0.156508;0.102626;-0.235488;,
 0.151357;-0.185791;-0.398479;,
 -0.198945;0.233735;0.057015;,
 0.199540;0.309451;0.437381;,
 0.151769;-0.046703;-0.398256;,
 0.286238;-0.189635;0.437419;,
 0.197777;0.234694;0.057377;,
 -0.091789;-0.185208;-0.466632;,
 -0.091859;-0.013947;-0.466626;,
 -0.088768;0.171060;-0.278206;,
 -0.121473;0.404025;0.438867;,
 -0.156528;0.101870;-0.235774;,
 -0.149640;-0.186518;-0.398754;,
 -0.121146;0.310938;0.021053;,
 -0.202169;0.308480;0.437014;,
 -0.149552;-0.047430;-0.398982;,
 -0.287633;-0.191022;0.436895;,
 0.119671;0.311520;0.021273;;

 16;
 4;6,23,25,13;,
 4;27,39,44,2;,
 6;37,31,38,26,33,29;,
 4;1,41,32,60;,
 4;0,43,20,11;,
 4;35,8,17,10;,
 6;4,7,34,15,5,12;,
 4;9,19,14,56;,
 4;18,22,69,65;,
 4;21,47,49,24;,
 4;63,42,46,62;,
 4;67,16,40,71;,
 4;36,48,45,30;,
 4;54,58,51,52;,
 6;57,53,64,68,3,28;,
 6;70,66,61,50,55,59;;

 MeshMaterialList {
  5;
  16;
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  2,
  1,
  1,
  0,
  0,
  3,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ILPOD.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ILPOD.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ILPOD.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ILPOD.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "ILPOD.ppm";
 }
 }
}
 MeshNormals {
  72;
  0.410321;0.856867;-0.312116;,
  0.410321;0.856867;-0.312116;,
  0.410321;0.856867;-0.312116;,
  -0.616704;-0.568448;0.544558;,
  -0.616704;-0.568448;0.544558;,
  -0.883029;0.193854;-0.427411;,
  -0.883029;0.193854;-0.427411;,
  -0.855834;0.367977;0.363511;,
  -0.855834;0.367977;0.363511;,
  -0.413872;0.854817;-0.313046;,
  -0.413872;0.854817;-0.313046;,
  -0.413872;0.854817;-0.313046;,
  -0.825247;-0.428842;-0.367508;,
  -0.825247;-0.428842;-0.367508;,
  -0.866621;0.384292;-0.318257;,
  -0.866621;0.384292;-0.318257;,
  -0.392289;0.855774;0.337285;,
  -0.392289;0.855774;0.337285;,
  -0.422603;0.732606;-0.533568;,
  -0.422603;0.732606;-0.533568;,
  -0.422603;0.732606;-0.533568;,
  -0.450107;0.345321;-0.823503;,
  -0.450107;0.345321;-0.823503;,
  -0.450107;0.345321;-0.823503;,
  -0.364342;-0.482247;-0.796676;,
  -0.364342;-0.482247;-0.796676;,
  0.863119;0.458357;-0.211980;,
  0.863119;0.458357;-0.211980;,
  0.617760;-0.565853;0.546061;,
  0.617760;-0.565853;0.546061;,
  0.881740;0.197321;-0.428485;,
  0.881740;0.197321;-0.428485;,
  0.853322;0.371055;0.366278;,
  0.853322;0.371055;0.366278;,
  -0.864465;0.454682;-0.214396;,
  -0.864465;0.454682;-0.214396;,
  0.825469;-0.427849;-0.368166;,
  0.825469;-0.427849;-0.368166;,
  0.865135;0.389067;-0.316493;,
  0.865135;0.389067;-0.316493;,
  0.387458;0.857567;0.338311;,
  0.387458;0.857567;0.338311;,
  0.419156;0.735146;-0.532793;,
  0.419156;0.735146;-0.532793;,
  0.419156;0.735146;-0.532793;,
  0.447747;0.346829;-0.824156;,
  0.447747;0.346829;-0.824156;,
  0.447747;0.346829;-0.824156;,
  0.365293;-0.481190;-0.796880;,
  0.365293;-0.481190;-0.796880;,
  0.365293;-0.481190;-0.796880;,
  0.447747;0.346829;-0.824156;,
  0.419156;0.735146;-0.532793;,
  0.387458;0.857567;0.338311;,
  0.865135;0.389067;-0.316493;,
  0.825469;-0.427849;-0.368166;,
  -0.864465;0.454682;-0.214396;,
  0.853322;0.371055;0.366278;,
  0.881740;0.197321;-0.428485;,
  0.617760;-0.565853;0.546061;,
  0.863119;0.458357;-0.211980;,
  -0.364342;-0.482247;-0.796676;,
  -0.450107;0.345321;-0.823503;,
  -0.422603;0.732606;-0.533568;,
  -0.392289;0.855774;0.337285;,
  -0.866621;0.384292;-0.318257;,
  -0.825247;-0.428842;-0.367508;,
  -0.413872;0.854817;-0.313046;,
  -0.855834;0.367977;0.363511;,
  -0.883029;0.193854;-0.427411;,
  -0.616704;-0.568448;0.544558;,
  0.410321;0.856867;-0.312116;;

  16;
  4;6,23,25,13;,
  4;27,39,44,2;,
  6;37,31,38,26,33,29;,
  4;1,41,32,60;,
  4;0,43,20,11;,
  4;35,8,17,10;,
  6;4,7,34,15,5,12;,
  4;9,19,14,56;,
  4;18,22,69,65;,
  4;21,47,49,24;,
  4;63,42,46,62;,
  4;67,16,40,71;,
  4;36,48,45,30;,
  4;54,58,51,52;,
  6;57,53,64,68,3,28;,
  6;70,66,61,50,55,59;;
 }
 MeshTextureCoords { 
 72;
 0.744966;0.022856;,
 0.746820;0.223155;,
 0.746820;0.223155;,
 0.160156;0.496094;,
 0.979243;0.500000;,
 0.509609;0.420897;,
 0.509609;0.420897;,
 0.979310;0.224829;,
 0.979310;0.224829;,
 0.746697;0.223475;,
 0.746697;0.223475;,
 0.743617;0.141699;,
 0.511933;0.497519;,
 0.511933;0.497519;,
 0.603074;0.338649;,
 0.603074;0.338649;,
 1.011128;0.143447;,
 0.980346;0.172194;,
 0.579345;0.300533;,
 0.579345;0.300533;,
 0.563905;0.124479;,
 0.466065;0.029763;,
 0.473978;0.402451;,
 0.473978;0.402451;,
 0.363926;0.029118;,
 0.472656;0.496797;,
 0.767010;0.265477;,
 0.767010;0.265477;,
 0.460938;0.495330;,
 0.979536;0.499236;,
 0.509763;0.420496;,
 0.509763;0.420496;,
 0.979515;0.224294;,
 0.979515;0.224294;,
 0.766807;0.266005;,
 0.766807;0.266005;,
 0.512087;0.497118;,
 0.512087;0.497118;,
 0.603234;0.338232;,
 0.603234;0.338232;,
 1.012471;0.025080;,
 0.980469;0.171875;,
 0.564899;0.037002;,
 0.564899;0.037002;,
 0.579436;0.300297;,
 0.474072;0.402205;,
 0.472060;0.035866;,
 0.466339;0.145427;,
 0.472751;0.496551;,
 0.364201;0.144783;,
 0.469059;0.627485;,
 0.474072;0.402205;,
 0.579436;0.300297;,
 0.372959;0.167969;,
 0.603234;0.338232;,
 0.508431;0.593665;,
 0.766807;0.266005;,
 0.415497;0.220388;,
 0.509763;0.420496;,
 0.995123;0.515625;,
 0.767010;0.265477;,
 0.468750;0.734344;,
 0.471025;0.127011;,
 0.563905;0.124479;,
 0.247245;0.168288;,
 0.603074;0.338649;,
 0.508271;0.767816;,
 0.743617;0.141699;,
 0.204950;0.220923;,
 0.509609;0.420897;,
 0.994818;0.847656;,
 0.744966;0.022856;;
 }
}
}
}
AnimationSet {
 Animation anim-utl22_1 {
  {frm-utl22_1}
  AnimationKey {
  1;
  2;
  1; 3; 1.280000, 1.280000, 1.280000;;,
  25; 3; 1.280000, 1.280000, 1.280000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 0.011820;;,
  25; 3; 0.000000, 0.000000, 0.011820;;;
  }
 }
}
