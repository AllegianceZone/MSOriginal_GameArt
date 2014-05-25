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

Frame frm-acs42 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-0.001472,-0.001252,1.000000;;
 }
Mesh wepbar1 {
 18;
 0.011528;-0.019968;-0.368897;,
 0.023057;0.000000;-0.368897;,
 0.011528;0.019968;-0.368897;,
 -0.011528;0.019968;-0.368897;,
 -0.023057;0.000000;-0.368897;,
 -0.011528;-0.019968;-0.368897;,
 -0.011528;-0.019968;-0.368897;,
 -0.021758;-0.037686;0.000892;,
 -0.023057;0.000000;-0.368897;,
 -0.043516;0.000000;0.000892;,
 -0.011528;0.019968;-0.368897;,
 -0.021758;0.037686;0.000892;,
 0.011528;0.019968;-0.368897;,
 0.021758;0.037686;0.000892;,
 0.023057;0.000000;-0.368897;,
 0.043516;0.000000;0.000892;,
 0.021758;-0.037686;0.000892;,
 0.011528;-0.019968;-0.368897;;

 16;
 3;1,15,16;,
 3;0,1,16;,
 3;2,13,15;,
 3;1,2,15;,
 3;5,7,9;,
 3;4,5,9;,
 3;0,16,7;,
 3;5,0,7;,
 3;3,11,13;,
 3;2,3,13;,
 3;4,9,11;,
 3;3,4,11;,
 3;14,17,6;,
 3;12,14,6;,
 3;10,12,6;,
 3;8,10,6;;

 MeshMaterialList {
  2;
  16;
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
  1;
Material {
 0.700000;0.700000;0.700000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 181.818176;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
}
 MeshNormals {
  18;
  0.305146;-0.880880;-0.361851;,
  0.796163;-0.153222;-0.585361;,
  0.530776;0.612887;-0.585361;,
  -0.265388;0.766109;-0.585361;,
  -0.915438;0.176176;-0.361851;,
  -0.382383;-0.441538;-0.811682;,
  -0.382383;-0.441538;-0.811682;,
  -0.326845;-0.943520;-0.054249;,
  -0.915438;0.176176;-0.361851;,
  -0.980534;-0.188704;-0.054249;,
  -0.265388;0.766109;-0.585361;,
  -0.653690;0.754816;-0.054249;,
  0.530776;0.612887;-0.585361;,
  0.326845;0.943520;-0.054249;,
  0.796163;-0.153222;-0.585361;,
  0.980534;0.188704;-0.054249;,
  0.653690;-0.754816;-0.054249;,
  0.305146;-0.880880;-0.361851;;

  16;
  3;1,15,16;,
  3;0,1,16;,
  3;2,13,15;,
  3;1,2,15;,
  3;5,7,9;,
  3;4,5,9;,
  3;0,16,7;,
  3;5,0,7;,
  3;3,11,13;,
  3;2,3,13;,
  3;4,9,11;,
  3;3,4,11;,
  3;14,17,6;,
  3;12,14,6;,
  3;10,12,6;,
  3;8,10,6;;
 }
 MeshTextureCoords {
 18;
 0.993787;0.192040;,
 0.995316;0.110826;,
 0.996094;0.028199;,
 0.996094;0.028199;,
 0.995316;0.110826;,
 0.993787;0.192040;,
 0.424818;0.992146;,
 0.012488;0.215259;,
 0.378932;0.843750;,
 0.011719;0.113839;,
 0.424818;0.695354;,
 0.011719;0.023438;,
 0.516589;0.695354;,
 0.011719;0.023438;,
 0.562474;0.843750;,
 0.011719;0.113839;,
 0.012488;0.215259;,
 0.516589;0.992146;;
 }
}
Frame frm-wepbar4 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.291247,1.000000;;
 }
Mesh wepbar4 {
 24;
 0.030636;-0.053063;-0.029360;,
 0.030636;-0.053063;0.029360;,
 0.061272;0.000000;0.029360;,
 0.061272;0.000000;-0.029360;,
 0.030636;0.053063;0.029360;,
 0.030636;0.053063;-0.029360;,
 -0.030636;0.053063;0.029360;,
 -0.030636;0.053063;-0.029360;,
 -0.061272;0.000000;0.029360;,
 -0.061272;0.000000;-0.029360;,
 -0.030636;-0.053063;0.029360;,
 -0.030636;-0.053063;-0.029360;,
 -0.030636;-0.053063;-0.029360;,
 -0.030636;-0.053063;0.029360;,
 -0.061272;0.000000;-0.029360;,
 -0.061272;0.000000;0.029360;,
 -0.030636;0.053063;-0.029360;,
 -0.030636;0.053063;0.029360;,
 0.030636;0.053063;-0.029360;,
 0.030636;0.053063;0.029360;,
 0.061272;0.000000;-0.029360;,
 0.061272;0.000000;0.029360;,
 0.030636;-0.053063;0.029360;,
 0.030636;-0.053063;-0.029360;;

 20;
 3;3,2,1;,
 3;0,3,1;,
 3;5,4,2;,
 3;3,5,2;,
 3;11,10,8;,
 3;9,11,8;,
 3;0,1,10;,
 3;11,0,10;,
 3;7,6,4;,
 3;5,7,4;,
 3;9,8,6;,
 3;7,9,6;,
 3;20,23,12;,
 3;18,20,12;,
 3;16,18,12;,
 3;14,16,12;,
 3;15,13,22;,
 3;17,15,22;,
 3;19,17,22;,
 3;21,19,22;;

 MeshMaterialList {
  2;
  20;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 170.909103;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 178.181778;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
}
 MeshNormals {
  24;
  0.310530;-0.896421;-0.316228;,
  0.392792;-0.453557;0.800000;,
  0.931588;0.179284;0.316228;,
  0.817057;-0.157243;-0.554700;,
  0.261116;0.753778;0.603023;,
  0.522233;0.603023;-0.603023;,
  -0.522233;0.603023;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.783349;-0.150756;0.603023;,
  -0.918559;0.176777;-0.353553;,
  -0.306186;-0.883884;0.353553;,
  -0.361157;-0.417029;-0.834058;,
  -0.361157;-0.417029;-0.834058;,
  -0.306186;-0.883884;0.353553;,
  -0.918559;0.176777;-0.353553;,
  -0.783349;-0.150756;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.522233;0.603023;0.603023;,
  0.522233;0.603023;-0.603023;,
  0.261116;0.753778;0.603023;,
  0.817057;-0.157243;-0.554700;,
  0.931588;0.179284;0.316228;,
  0.392792;-0.453557;0.800000;,
  0.310530;-0.896421;-0.316228;;

  20;
  3;3,2,1;,
  3;0,3,1;,
  3;5,4,2;,
  3;3,5,2;,
  3;11,10,8;,
  3;9,11,8;,
  3;0,1,10;,
  3;11,0,10;,
  3;7,6,4;,
  3;5,7,4;,
  3;9,8,6;,
  3;7,9,6;,
  3;20,23,12;,
  3;18,20,12;,
  3;16,18,12;,
  3;14,16,12;,
  3;15,13,22;,
  3;17,15,22;,
  3;19,17,22;,
  3;21,19,22;;
 }
 MeshTextureCoords {
 24;
 0.019531;0.820312;,
 0.195312;0.820312;,
 0.195312;0.656250;,
 0.019531;0.656250;,
 0.195312;0.492188;,
 0.019531;0.492188;,
 0.195312;0.492188;,
 0.019531;0.492188;,
 0.195312;0.656250;,
 0.019531;0.656250;,
 0.195312;0.820312;,
 0.019531;0.820312;,
 0.421875;0.992188;,
 0.421875;0.992188;,
 0.375000;0.843750;,
 0.375000;0.843750;,
 0.421875;0.695313;,
 0.421875;0.695313;,
 0.515625;0.695312;,
 0.515625;0.695312;,
 0.562500;0.843750;,
 0.562500;0.843750;,
 0.515625;0.992187;,
 0.515625;0.992187;;
 }
}
}
Frame frm-wepbar3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.177254,1.000000;;
 }
Mesh wepbar3 {
 24;
 0.030636;-0.053063;-0.029360;,
 0.030636;-0.053063;0.029360;,
 0.061272;0.000000;0.029360;,
 0.061272;0.000000;-0.029360;,
 0.030636;0.053063;0.029360;,
 0.030636;0.053063;-0.029360;,
 -0.030636;0.053063;0.029360;,
 -0.030636;0.053063;-0.029360;,
 -0.061272;0.000000;0.029360;,
 -0.061272;0.000000;-0.029360;,
 -0.030636;-0.053063;0.029360;,
 -0.030636;-0.053063;-0.029360;,
 -0.030636;-0.053063;-0.029360;,
 -0.030636;-0.053063;0.029360;,
 -0.061272;0.000000;-0.029360;,
 -0.061272;0.000000;0.029360;,
 -0.030636;0.053063;-0.029360;,
 -0.030636;0.053063;0.029360;,
 0.030636;0.053063;-0.029360;,
 0.030636;0.053063;0.029360;,
 0.061272;0.000000;-0.029360;,
 0.061272;0.000000;0.029360;,
 0.030636;-0.053063;0.029360;,
 0.030636;-0.053063;-0.029360;;

 20;
 3;3,2,1;,
 3;0,3,1;,
 3;5,4,2;,
 3;3,5,2;,
 3;11,10,8;,
 3;9,11,8;,
 3;0,1,10;,
 3;11,0,10;,
 3;7,6,4;,
 3;5,7,4;,
 3;9,8,6;,
 3;7,9,6;,
 3;20,23,12;,
 3;18,20,12;,
 3;16,18,12;,
 3;14,16,12;,
 3;15,13,22;,
 3;17,15,22;,
 3;19,17,22;,
 3;21,19,22;;

 MeshMaterialList {
  2;
  20;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 170.909103;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 178.181778;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
}
 MeshNormals {
  24;
  0.310530;-0.896421;-0.316228;,
  0.392792;-0.453557;0.800000;,
  0.931588;0.179284;0.316228;,
  0.817057;-0.157243;-0.554700;,
  0.261116;0.753778;0.603023;,
  0.522233;0.603023;-0.603023;,
  -0.522233;0.603023;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.783349;-0.150756;0.603023;,
  -0.918559;0.176777;-0.353553;,
  -0.306186;-0.883884;0.353553;,
  -0.361157;-0.417029;-0.834058;,
  -0.361157;-0.417029;-0.834058;,
  -0.306186;-0.883884;0.353553;,
  -0.918559;0.176777;-0.353553;,
  -0.783349;-0.150756;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.522233;0.603023;0.603023;,
  0.522233;0.603023;-0.603023;,
  0.261116;0.753778;0.603023;,
  0.817057;-0.157243;-0.554700;,
  0.931588;0.179284;0.316228;,
  0.392792;-0.453557;0.800000;,
  0.310530;-0.896421;-0.316228;;

  20;
  3;3,2,1;,
  3;0,3,1;,
  3;5,4,2;,
  3;3,5,2;,
  3;11,10,8;,
  3;9,11,8;,
  3;0,1,10;,
  3;11,0,10;,
  3;7,6,4;,
  3;5,7,4;,
  3;9,8,6;,
  3;7,9,6;,
  3;20,23,12;,
  3;18,20,12;,
  3;16,18,12;,
  3;14,16,12;,
  3;15,13,22;,
  3;17,15,22;,
  3;19,17,22;,
  3;21,19,22;;
 }
 MeshTextureCoords {
 24;
 0.019531;0.820312;,
 0.195312;0.820312;,
 0.195312;0.656250;,
 0.019531;0.656250;,
 0.195312;0.492188;,
 0.019531;0.492188;,
 0.195312;0.492188;,
 0.019531;0.492188;,
 0.195312;0.656250;,
 0.019531;0.656250;,
 0.195312;0.820312;,
 0.019531;0.820312;,
 0.421875;0.992188;,
 0.421875;0.992188;,
 0.375000;0.843750;,
 0.375000;0.843750;,
 0.421875;0.695313;,
 0.421875;0.695313;,
 0.515625;0.695312;,
 0.515625;0.695312;,
 0.562500;0.843750;,
 0.562500;0.843750;,
 0.515625;0.992187;,
 0.515625;0.992187;;
 }
}
}
Frame frm-wepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.070057,1.000000;;
 }
Mesh wepbar2 {
 24;
 0.030636;-0.053063;-0.029360;,
 0.030636;-0.053063;0.029360;,
 0.061272;0.000000;0.029360;,
 0.061272;0.000000;-0.029360;,
 0.030636;0.053063;0.029360;,
 0.030636;0.053063;-0.029360;,
 -0.030636;0.053063;0.029360;,
 -0.030636;0.053063;-0.029360;,
 -0.061272;0.000000;0.029360;,
 -0.061272;0.000000;-0.029360;,
 -0.030636;-0.053063;0.029360;,
 -0.030636;-0.053063;-0.029360;,
 -0.030636;-0.053063;-0.029360;,
 -0.030636;-0.053063;0.029360;,
 -0.061272;0.000000;-0.029360;,
 -0.061272;0.000000;0.029360;,
 -0.030636;0.053063;-0.029360;,
 -0.030636;0.053063;0.029360;,
 0.030636;0.053063;-0.029360;,
 0.030636;0.053063;0.029360;,
 0.061272;0.000000;-0.029360;,
 0.061272;0.000000;0.029360;,
 0.030636;-0.053063;0.029360;,
 0.030636;-0.053063;-0.029360;;

 20;
 3;3,2,1;,
 3;0,3,1;,
 3;5,4,2;,
 3;3,5,2;,
 3;11,10,8;,
 3;9,11,8;,
 3;0,1,10;,
 3;11,0,10;,
 3;7,6,4;,
 3;5,7,4;,
 3;9,8,6;,
 3;7,9,6;,
 3;20,23,12;,
 3;18,20,12;,
 3;16,18,12;,
 3;14,16,12;,
 3;15,13,22;,
 3;17,15,22;,
 3;19,17,22;,
 3;21,19,22;;

 MeshMaterialList {
  2;
  20;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 170.909103;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 178.181778;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs42c.bmp";
 }
 }
}
 MeshNormals {
  24;
  0.310530;-0.896421;-0.316228;,
  0.392792;-0.453557;0.800000;,
  0.931588;0.179284;0.316228;,
  0.817057;-0.157243;-0.554700;,
  0.261116;0.753778;0.603023;,
  0.522233;0.603023;-0.603023;,
  -0.522233;0.603023;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.783349;-0.150756;0.603023;,
  -0.918559;0.176777;-0.353553;,
  -0.306186;-0.883884;0.353553;,
  -0.361157;-0.417029;-0.834058;,
  -0.361157;-0.417029;-0.834058;,
  -0.306186;-0.883884;0.353553;,
  -0.918559;0.176777;-0.353553;,
  -0.783349;-0.150756;0.603023;,
  -0.261117;0.753778;-0.603023;,
  -0.522233;0.603023;0.603023;,
  0.522233;0.603023;-0.603023;,
  0.261116;0.753778;0.603023;,
  0.817057;-0.157243;-0.554700;,
  0.931588;0.179284;0.316228;,
  0.392792;-0.453557;0.800000;,
  0.310530;-0.896421;-0.316228;;

  20;
  3;3,2,1;,
  3;0,3,1;,
  3;5,4,2;,
  3;3,5,2;,
  3;11,10,8;,
  3;9,11,8;,
  3;0,1,10;,
  3;11,0,10;,
  3;7,6,4;,
  3;5,7,4;,
  3;9,8,6;,
  3;7,9,6;,
  3;20,23,12;,
  3;18,20,12;,
  3;16,18,12;,
  3;14,16,12;,
  3;15,13,22;,
  3;17,15,22;,
  3;19,17,22;,
  3;21,19,22;;
 }
 MeshTextureCoords {
 24;
 0.019531;0.820312;,
 0.195312;0.820312;,
 0.195312;0.656250;,
 0.019531;0.656250;,
 0.195312;0.492188;,
 0.019531;0.492188;,
 0.195312;0.492188;,
 0.019531;0.492188;,
 0.195312;0.656250;,
 0.019531;0.656250;,
 0.195312;0.820312;,
 0.019531;0.820312;,
 0.421875;0.992188;,
 0.421875;0.992188;,
 0.375000;0.843750;,
 0.375000;0.843750;,
 0.421875;0.695313;,
 0.421875;0.695313;,
 0.515625;0.695312;,
 0.515625;0.695312;,
 0.562500;0.843750;,
 0.562500;0.843750;,
 0.515625;0.992187;,
 0.515625;0.992187;;
 }
}
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.368960,1.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-wepbar1 {
  {frm-wepbar1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -0.001472, 0.001252;;,
  60; 3; 0.000000, -0.001472, 0.001252;;;
  }
 }
 Animation anim-wepbar4 {
  {frm-wepbar4}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.291247;;,
  60; 3; 0.000000, 0.000000, -0.291247;;;
  }
 }
 Animation anim-wepbar3 {
  {frm-wepbar3}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.177254;;,
  60; 3; 0.000000, 0.000000, -0.177254;;;
  }
 }
 Animation anim-wepbar2 {
  {frm-wepbar2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.070057;;,
  60; 3; 0.000000, 0.000000, -0.070057;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.368960;;,
  60; 3; 0.000000, 0.000000, -0.368960;;;
  }
 }
  }
