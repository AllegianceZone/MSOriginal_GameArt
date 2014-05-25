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

Frame frm-dummyRoot {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-afuselg3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.707100,-0.707114,0.000000,
0.000000,0.707114,0.707100,0.000000,
-0.002563,0.002856,5.368074,1.000000;;
 }
Mesh afuselg3 {
 24;
 -0.791237;0.815240;-0.510557;,
 -0.791237;0.815240;-0.510557;,
 -0.791237;0.815240;0.510024;,
 -0.791237;0.815240;0.510024;,
 -0.791237;-0.804735;-0.510556;,
 -0.791237;-0.804735;-0.510556;,
 -0.791237;-0.804734;0.510024;,
 -0.791237;-0.804734;0.510024;,
 0.796363;0.815240;-0.510557;,
 0.796363;0.815240;-0.510557;,
 0.796363;0.815240;0.510024;,
 0.796363;0.815240;0.510024;,
 0.796363;-0.804735;-0.510556;,
 0.796363;-0.804735;-0.510556;,
 0.796363;-0.804734;0.510024;,
 0.796363;-0.804734;0.510024;,
 0.796363;-0.804734;0.510024;,
 0.796363;-0.804735;-0.510556;,
 0.796363;0.815240;0.510024;,
 0.796363;0.815240;-0.510557;,
 -0.791237;-0.804734;0.510024;,
 -0.791237;-0.804735;-0.510556;,
 -0.791237;0.815240;0.510024;,
 -0.791237;0.815240;-0.510557;;

 12;
 3;5,7,3;,
 3;5,3,1;,
 3;14,13,9;,
 3;14,9,10;,
 3;12,4,0;,
 3;12,0,8;,
 3;23,22,18;,
 3;23,18,19;,
 3;17,16,20;,
 3;17,20,21;,
 3;6,15,11;,
 3;6,11,2;;

 MeshMaterialList {
  2;
  12;
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
  1;
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
}
 MeshNormals {
  24;
  -0.333333;0.666666;-0.666667;,
  -0.333333;0.666666;-0.666667;,
  -0.816497;0.408248;0.408248;,
  -0.816497;0.408248;0.408248;,
  -0.816497;-0.408248;-0.408248;,
  -0.816497;-0.408248;-0.408248;,
  -0.333333;-0.666666;0.666667;,
  -0.333333;-0.666666;0.666667;,
  0.816497;0.408248;-0.408248;,
  0.816497;0.408248;-0.408248;,
  0.333333;0.666667;0.666666;,
  0.333333;0.666667;0.666666;,
  0.333333;-0.666667;-0.666666;,
  0.333333;-0.666667;-0.666666;,
  0.816497;-0.408248;0.408248;,
  0.816497;-0.408248;0.408248;,
  0.816497;-0.408248;0.408248;,
  0.333333;-0.666667;-0.666666;,
  0.333333;0.666667;0.666666;,
  0.816497;0.408248;-0.408248;,
  -0.333333;-0.666666;0.666667;,
  -0.816497;-0.408248;-0.408248;,
  -0.816497;0.408248;0.408248;,
  -0.333333;0.666666;-0.666667;;

  12;
  3;5,7,3;,
  3;5,3,1;,
  3;14,13,9;,
  3;14,9,10;,
  3;12,4,0;,
  3;12,0,8;,
  3;23,22,18;,
  3;23,18,19;,
  3;17,16,20;,
  3;17,20,21;,
  3;6,15,11;,
  3;6,11,2;;
 }
 MeshTextureCoords {
 24;
 0.765625;0.492188;,
 0.185230;0.039062;,
 0.000000;0.000000;,
 0.309031;0.030004;,
 0.765625;0.578125;,
 -0.011281;0.024684;,
 0.000000;0.000000;,
 0.112520;0.015625;,
 0.851562;0.492188;,
 0.388469;0.031340;,
 0.264667;0.022281;,
 0.000000;0.000000;,
 0.851562;0.578125;,
 0.191958;0.045719;,
 0.068156;0.036660;,
 0.000000;0.000000;,
 0.303906;0.029891;,
 0.178568;0.039062;,
 0.234943;0.015625;,
 0.360281;0.024796;,
 0.108932;0.015625;,
 -0.016406;0.024796;,
 0.039969;0.029891;,
 0.165307;0.039062;;
 }
}
}
Frame frm-ss12 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,-0.707100,0.707114,0.000000,
0.000000,-0.707114,-0.707100,0.000000,
0.000000,0.366408,5.716208,1.000000;;
 }
Frame frm-fuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.707100,-0.707114,0.000000,
0.000000,0.707114,0.707100,0.000000,
0.000000,-3.782876,4.301054,1.000000;;
 }
Mesh fuselg {
 50;
 2.250000;-5.444204;0.001616;,
 1.590990;-3.836903;1.592606;,
 1.590990;-3.836903;1.592606;,
 0.000000;-3.175066;2.251617;,
 -1.590990;-3.836903;1.592606;,
 -1.590990;-3.836903;1.592606;,
 -2.250000;-5.444204;0.001616;,
 -1.590990;-7.028123;-1.589375;,
 -1.590990;-7.028123;-1.589375;,
 0.000000;-7.688163;-2.248385;,
 1.590990;-7.028123;-1.589375;,
 1.590990;-7.028123;-1.589375;,
 2.250000;5.369803;0.001616;,
 1.590990;3.762296;1.592606;,
 1.590990;3.762296;1.592606;,
 0.000000;3.092870;2.251617;,
 -1.590990;3.762296;1.592606;,
 -1.590990;3.762296;1.592606;,
 -2.250000;5.369803;0.001616;,
 -1.590990;6.974460;-1.589374;,
 -1.590990;6.974460;-1.589374;,
 0.000000;7.645785;-2.248385;,
 1.590990;6.974460;-1.589374;,
 1.590990;6.974460;-1.589374;,
 -1.125000;4.231336;1.126616;,
 -0.795495;5.033666;0.331121;,
 0.000000;5.369332;0.001616;,
 0.795495;5.033666;0.331121;,
 1.125000;4.231336;1.126616;,
 -1.125000;-4.309635;1.126616;,
 1.125000;-4.309635;1.126616;,
 0.795495;-5.101595;0.331121;,
 0.000000;-5.431615;0.001616;,
 -0.795495;-5.101595;0.331121;,
 1.590990;6.974460;-1.589374;,
 0.000000;7.645785;-2.248385;,
 -1.590990;6.974460;-1.589374;,
 -2.250000;5.369803;0.001616;,
 -1.590990;3.762296;1.592606;,
 0.000000;3.092870;2.251617;,
 1.590990;3.762296;1.592606;,
 2.250000;5.369803;0.001616;,
 1.590990;-7.028123;-1.589375;,
 0.000000;-7.688163;-2.248385;,
 -1.590990;-7.028123;-1.589375;,
 -2.250000;-5.444204;0.001616;,
 -1.590990;-3.836903;1.592606;,
 0.000000;-3.175066;2.251617;,
 1.590990;-3.836903;1.592606;,
 2.250000;-5.444204;0.001616;;

 48;
 3;12,0,11;,
 3;23,12,11;,
 3;14,2,0;,
 3;12,14,0;,
 3;15,3,1;,
 3;13,15,1;,
 3;17,5,3;,
 3;15,17,3;,
 3;18,6,4;,
 3;16,18,4;,
 3;20,8,6;,
 3;18,20,6;,
 3;21,9,7;,
 3;19,21,7;,
 3;22,10,9;,
 3;21,22,9;,
 3;29,47,46;,
 3;28,39,40;,
 3;30,49,48;,
 3;31,47,32;,
 3;30,47,31;,
 3;44,43,32;,
 3;33,44,32;,
 3;45,44,33;,
 3;29,45,33;,
 3;33,47,29;,
 3;43,42,31;,
 3;32,43,31;,
 3;42,49,30;,
 3;31,42,30;,
 3;32,47,33;,
 3;46,45,29;,
 3;48,47,30;,
 3;24,37,38;,
 3;27,39,28;,
 3;26,39,27;,
 3;25,39,26;,
 3;24,39,25;,
 3;38,39,24;,
 3;36,37,24;,
 3;25,36,24;,
 3;35,36,25;,
 3;26,35,25;,
 3;34,35,26;,
 3;27,34,26;,
 3;41,34,27;,
 3;28,41,27;,
 3;40,41,28;;

 MeshMaterialList {
  3;
  48;
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
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;
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
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "ss10.bmp";
 }
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
  50;
  0.789208;-0.375105;0.486258;,
  0.397089;-0.329714;0.856510;,
  0.397089;-0.329714;0.856510;,
  -0.046614;-0.515600;0.855561;,
  -0.547609;-0.344575;0.762491;,
  -0.547609;-0.344575;0.762491;,
  -0.735842;-0.526288;0.426095;,
  -0.645159;-0.757995;-0.095984;,
  -0.645159;-0.757995;-0.095984;,
  0.176846;-0.913826;-0.365579;,
  0.742828;-0.662415;0.097023;,
  0.742828;-0.662415;0.097023;,
  0.736595;0.524238;0.427320;,
  0.546318;0.345385;0.763051;,
  0.546318;0.345385;0.763051;,
  0.046591;0.513902;0.856583;,
  -0.395580;0.330391;0.856947;,
  -0.395580;0.330391;0.856947;,
  -0.789222;0.374260;0.486886;,
  -0.745846;0.658547;0.100143;,
  -0.745846;0.658547;0.100143;,
  -0.178775;0.914328;-0.363378;,
  0.649097;0.755054;-0.092555;,
  0.649097;0.755054;-0.092555;,
  0.001772;0.703772;0.710424;,
  -0.000540;0.703268;0.710924;,
  0.000403;0.702962;0.711228;,
  -0.000201;0.703421;0.710773;,
  -0.001795;0.703783;0.710412;,
  0.002190;-0.705199;0.709006;,
  -0.002190;-0.705199;0.709006;,
  -0.003436;-0.706704;0.707501;,
  0.000000;-0.706079;0.708133;,
  0.003436;-0.706704;0.707501;,
  0.649097;0.755054;-0.092555;,
  -0.178775;0.914328;-0.363378;,
  -0.745846;0.658547;0.100143;,
  -0.789222;0.374260;0.486886;,
  -0.395580;0.330391;0.856947;,
  0.046591;0.513902;0.856583;,
  0.546318;0.345385;0.763051;,
  0.736595;0.524238;0.427320;,
  0.742828;-0.662415;0.097023;,
  0.176846;-0.913826;-0.365579;,
  -0.645159;-0.757995;-0.095984;,
  -0.735842;-0.526288;0.426095;,
  -0.547609;-0.344575;0.762491;,
  -0.046614;-0.515600;0.855561;,
  0.397089;-0.329714;0.856510;,
  0.789208;-0.375105;0.486258;;

  48;
  3;12,0,11;,
  3;23,12,11;,
  3;14,2,0;,
  3;12,14,0;,
  3;15,3,1;,
  3;13,15,1;,
  3;17,5,3;,
  3;15,17,3;,
  3;18,6,4;,
  3;16,18,4;,
  3;20,8,6;,
  3;18,20,6;,
  3;21,9,7;,
  3;19,21,7;,
  3;22,10,9;,
  3;21,22,9;,
  3;29,47,46;,
  3;28,39,40;,
  3;30,49,48;,
  3;31,47,32;,
  3;30,47,31;,
  3;44,43,32;,
  3;33,44,32;,
  3;45,44,33;,
  3;29,45,33;,
  3;33,47,29;,
  3;43,42,31;,
  3;32,43,31;,
  3;42,49,30;,
  3;31,42,30;,
  3;32,47,33;,
  3;46,45,29;,
  3;48,47,30;,
  3;24,37,38;,
  3;27,39,28;,
  3;26,39,27;,
  3;25,39,26;,
  3;24,39,25;,
  3;38,39,24;,
  3;36,37,24;,
  3;25,36,24;,
  3;35,36,25;,
  3;26,35,25;,
  3;34,35,26;,
  3;27,34,26;,
  3;41,34,27;,
  3;28,41,27;,
  3;40,41,28;;
 }
 MeshTextureCoords {
 50;
 0.324445;0.676069;,
 0.117058;0.758688;,
 0.531539;0.600729;,
 0.324219;0.718561;,
 0.114822;0.600729;,
 0.531379;0.758688;,
 0.321055;0.676069;,
 0.117059;0.750312;,
 0.529142;0.750312;,
 0.324219;0.781250;,
 0.531379;0.750312;,
 0.117219;0.750312;,
 0.324445;0.169182;,
 0.117058;0.297953;,
 0.531539;0.244531;,
 0.324219;0.338540;,
 0.114822;0.244531;,
 0.531379;0.297953;,
 0.321055;0.169182;,
 0.117059;0.093967;,
 0.529142;0.093967;,
 0.324219;0.062500;,
 0.531379;0.093967;,
 0.117219;0.093967;,
 0.739344;0.722656;,
 0.758794;0.769612;,
 0.805750;0.789062;,
 0.852706;0.769612;,
 0.872156;0.722656;,
 0.739344;0.722656;,
 0.872156;0.722656;,
 0.852706;0.769613;,
 0.805750;0.789063;,
 0.758794;0.769613;,
 0.899663;0.882975;,
 0.805750;0.921875;,
 0.711837;0.882975;,
 0.672937;0.789062;,
 0.711837;0.695150;,
 0.805750;0.656250;,
 0.899663;0.695150;,
 0.938562;0.789062;,
 0.899663;0.882975;,
 0.805750;0.921875;,
 0.711837;0.882975;,
 0.672937;0.789063;,
 0.711837;0.695150;,
 0.805750;0.656250;,
 0.899663;0.695150;,
 0.938562;0.789063;;
 }
}
Frame frm-afuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.707100,-0.707114,0.000000,
0.000000,0.707114,0.707100,0.000000,
-0.002563,-5.368074,-0.002858,1.000000;;
 }
Mesh afuselg {
 24;
 -0.791237;0.815240;0.510557;,
 -0.791237;0.815240;0.510557;,
 -0.791237;0.815240;-0.510024;,
 -0.791237;0.815240;-0.510024;,
 -0.791237;-0.804735;0.510556;,
 -0.791237;-0.804735;0.510556;,
 -0.791237;-0.804734;-0.510024;,
 -0.791237;-0.804734;-0.510024;,
 0.796363;0.815240;0.510557;,
 0.796363;0.815240;0.510557;,
 0.796363;0.815240;-0.510024;,
 0.796363;0.815240;-0.510024;,
 0.796363;-0.804735;0.510556;,
 0.796363;-0.804735;0.510556;,
 0.796363;-0.804734;-0.510024;,
 0.796363;-0.804734;-0.510024;,
 0.796363;-0.804734;-0.510024;,
 0.796363;-0.804735;0.510556;,
 0.796363;0.815240;-0.510024;,
 0.796363;0.815240;0.510557;,
 -0.791237;-0.804734;-0.510024;,
 -0.791237;-0.804735;0.510556;,
 -0.791237;0.815240;-0.510024;,
 -0.791237;0.815240;0.510557;;

 12;
 3;3,7,5;,
 3;1,3,5;,
 3;9,13,14;,
 3;10,9,14;,
 3;0,4,12;,
 3;8,0,12;,
 3;18,22,23;,
 3;19,18,23;,
 3;20,16,17;,
 3;21,20,17;,
 3;11,15,6;,
 3;2,11,6;;

 MeshMaterialList {
  2;
  12;
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
  1;
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
}
 MeshNormals {
  24;
  -0.333333;0.666666;0.666667;,
  -0.333333;0.666666;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.333333;-0.666666;-0.666667;,
  -0.333333;-0.666666;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;0.408248;0.408248;,
  0.333333;0.666667;-0.666666;,
  0.333333;0.666667;-0.666666;,
  0.333333;-0.666667;0.666666;,
  0.333333;-0.666667;0.666666;,
  0.816497;-0.408248;-0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666666;,
  0.333333;0.666667;-0.666666;,
  0.816497;0.408248;0.408248;,
  -0.333333;-0.666666;-0.666667;,
  -0.816497;-0.408248;0.408248;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666666;0.666667;;

  12;
  3;3,7,5;,
  3;1,3,5;,
  3;9,13,14;,
  3;10,9,14;,
  3;0,4,12;,
  3;8,0,12;,
  3;18,22,23;,
  3;19,18,23;,
  3;20,16,17;,
  3;21,20,17;,
  3;11,15,6;,
  3;2,11,6;;
 }
 MeshTextureCoords {
 24;
 0.765625;0.492188;,
 0.309031;0.030004;,
 0.000000;0.000000;,
 0.185230;0.039062;,
 0.765625;0.578125;,
 0.112520;0.015625;,
 0.000000;0.000000;,
 -0.011281;0.024684;,
 0.851562;0.492188;,
 0.264667;0.022281;,
 0.388469;0.031340;,
 0.000000;0.000000;,
 0.851562;0.578125;,
 0.068156;0.036660;,
 0.191958;0.045719;,
 0.000000;0.000000;,
 0.178568;0.039062;,
 0.303906;0.029891;,
 0.360281;0.024796;,
 0.234943;0.015625;,
 -0.016406;0.024796;,
 0.108932;0.015625;,
 0.165307;0.039062;,
 0.039969;0.029891;;
 }
}
Frame frm-doccon {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.000275,-0.006074,-0.507628,1.000000;;
 }
}
}
Frame frm-SS1 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
0.000000,0.000010,0.000000,0.000000,
2.300954,5.364179,0.000002,1.000000;;
 }
Mesh SS1 {
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
Frame frm-SS2 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
0.000000,0.000010,0.000000,0.000000,
-2.306005,5.364179,0.000002,1.000000;;
 }
Mesh SS2 {
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
Frame frm-SS3 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
0.000000,0.000010,0.000000,0.000000,
-2.306005,-5.438575,-0.000002,1.000000;;
 }
Mesh SS3 {
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
Frame frm-SS4 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000000,-0.000010,0.000000,
0.000000,0.000010,0.000000,0.000000,
2.300072,-5.438575,-0.000002,1.000000;;
 }
Mesh SS4 {
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
}
}
}
AnimationSet {
 Animation anim-afuselg3 {
  {frm-afuselg3}
  AnimationKey {
  0;
  2;
  1; 4; 0.923878, -0.382688, 0.000000, 0.000000;;,  # Original(-45.000549, 0.000000, 0.000000) Reextracted(45.000549, 0.000000, 0.000000)
  30; 4; 0.923878, -0.382688, 0.000000, 0.000000;;;  # Original(-45.000549, 0.000000, 0.000000) Reextracted(45.000549, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.002563, 0.002856, -5.368074;;,
  30; 3; -0.002563, 0.002856, -5.368074;;;
  }
 }
 Animation anim-ss12 {
  {frm-ss12}
  AnimationKey {
  0;
  2;
  1; 4; 0.382688, 0.923878, 0.000000, 0.000000;;,  # Original(134.999451, 0.000000, 0.000000) Reextracted(-134.999451, 0.000000, 0.000000)
  30; 4; 0.382688, 0.923878, 0.000000, 0.000000;;;  # Original(134.999451, 0.000000, 0.000000) Reextracted(-134.999451, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.366408, -5.716208;;,
  30; 3; 0.000000, 0.366408, -5.716208;;;
  }
 }
 Animation anim-fuselg {
  {frm-fuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.923878, -0.382688, 0.000000, 0.000000;;,  # Original(-45.000549, 0.000000, 0.000000) Reextracted(45.000549, 0.000000, 0.000000)
  30; 4; 0.923878, -0.382688, 0.000000, 0.000000;;;  # Original(-45.000549, 0.000000, 0.000000) Reextracted(45.000549, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -3.782876, -4.301054;;,
  30; 3; 0.000000, -3.782876, -4.301054;;;
  }
 }
 Animation anim-afuselg {
  {frm-afuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.923878, -0.382688, 0.000000, 0.000000;;,  # Original(-45.000549, 0.000000, 0.000000) Reextracted(45.000549, 0.000000, 0.000000)
  30; 4; 0.923878, -0.382688, 0.000000, 0.000000;;;  # Original(-45.000549, 0.000000, 0.000000) Reextracted(45.000549, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.002563, -5.368074, 0.002858;;,
  30; 3; -0.002563, -5.368074, 0.002858;;;
  }
 }
 Animation anim-doccon {
  {frm-doccon}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 1.000000, 0.000000, 0.000000;;,  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  30; 4; 0.000000, 1.000000, 0.000000, 0.000000;;;  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.000275, -0.006074, 0.507628;;,
  30; 3; -0.000275, -0.006074, 0.507628;;;
  }
 }
 Animation anim-SS1 {
  {frm-SS1}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
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
  1; 3; 2.300954, 5.364179, -0.000002;;,
  30; 3; 2.300954, 5.364179, -0.000002;;;
  }
 }
 Animation anim-SS2 {
  {frm-SS2}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
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
  1; 3; -2.306005, 5.364179, -0.000002;;,
  30; 3; -2.306005, 5.364179, -0.000002;;;
  }
 }
 Animation anim-SS3 {
  {frm-SS3}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
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
  1; 3; -2.306005, -5.438575, 0.000002;;,
  30; 3; -2.306005, -5.438575, 0.000002;;;
  }
 }
 Animation anim-SS4 {
  {frm-SS4}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
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
  1; 3; 2.300072, -5.438575, 0.000002;;,
  30; 3; 2.300072, -5.438575, 0.000002;;;
  }
 }
  }
