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

Frame frm-acs37 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,-0.065912,1.000000;;
 }
Frame frm-fuselg1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.639643,0.000000,0.000000,1.000000;;
 }
Mesh fuselg1 {
 24;
 -0.000441;-0.251250;0.251250;,
 -0.000441;-0.251250;0.251250;,
 -0.000441;-0.251250;-0.251250;,
 -0.000441;-0.251250;-0.251250;,
 -0.000441;0.251250;0.251250;,
 -0.000441;0.251250;0.251250;,
 -0.000441;0.251250;-0.251250;,
 -0.000441;0.251250;-0.251250;,
 0.559126;-0.251250;0.251250;,
 0.559126;-0.251250;0.251250;,
 0.559126;-0.251250;-0.251250;,
 0.559126;-0.251250;-0.251250;,
 0.559126;0.251250;0.251250;,
 0.559126;0.251250;0.251250;,
 0.559126;0.251250;-0.251250;,
 0.559126;0.251250;-0.251250;,
 0.559126;0.251250;-0.251250;,
 0.559126;0.251250;0.251250;,
 0.559126;-0.251250;-0.251250;,
 0.559126;-0.251250;0.251250;,
 -0.000441;0.251250;-0.251250;,
 -0.000441;0.251250;0.251250;,
 -0.000441;-0.251250;-0.251250;,
 -0.000441;-0.251250;0.251250;;

 6;
 4;13,15,7,5;,
 4;6,14,11,3;,
 4;16,12,9,10;,
 4;17,4,1,8;,
 4;0,2,18,19;,
 4;23,21,20,22;;

 MeshMaterialList {
  4;
  6;
  0,
  1,
  1,
  1,
  2,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.577350;-0.577350;0.577350;,
  -0.577350;-0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  0.577350;-0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;0.577350;;

  6;
  4;13,15,7,5;,
  4;6,14,11,3;,
  4;16,12,9,10;,
  4;17,4,1,8;,
  4;0,2,18,19;,
  4;23,21,20,22;;
 }
 MeshTextureCoords {
 24;
 0.734375;0.734375;,
 0.734375;0.984375;,
 0.953125;0.734375;,
 0.953125;0.984375;,
 0.953125;0.984375;,
 0.734375;0.984375;,
 0.734375;0.984375;,
 0.953125;0.984375;,
 0.734375;0.734375;,
 0.375000;0.656250;,
 0.695312;0.656250;,
 0.953125;0.734375;,
 0.375000;0.984375;,
 0.734375;0.734375;,
 0.734375;0.734375;,
 0.953125;0.734375;,
 0.695312;0.984375;,
 0.953125;0.734375;,
 0.953125;0.984375;,
 0.734375;0.984375;,
 0.695312;0.656250;,
 0.375000;0.656250;,
 0.695312;0.984375;,
 0.375000;0.984375;;
 }
}
Frame frm-fuselg3 {
  FrameTransformMatrix {
0.000000,-1.000000,0.000000,0.000000,
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.550460,-0.105912,0.000000,1.000000;;
 }
Mesh fuselg3 {
 5;
 0.061422;0.000610;0.000000;,
 -0.030711;0.000610;-0.053193;,
 -0.030711;0.000610;0.053193;,
 0.061422;0.000610;0.000000;,
 0.000000;0.627882;0.000000;;

 3;
 3;4,0,1;,
 3;4,2,3;,
 3;4,1,2;;

 MeshMaterialList {
  1;
  3;
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  5;
  0.995240;0.097454;0.000000;,
  -0.497620;0.097454;-0.861903;,
  -0.497620;0.097454;0.861903;,
  0.995240;0.097454;0.000000;,
  0.000000;1.000000;0.000000;;

  3;
  3;4,0,1;,
  3;4,2,3;,
  3;4,1,2;;
 }
 MeshTextureCoords {
 5;
 0.101562;0.914062;,
 0.171875;0.914062;,
 0.101562;0.914062;,
 0.171875;0.914062;,
 0.140625;0.500000;;
 }
}
}
Frame frm-fuselg2 {
  FrameTransformMatrix {
0.000000,-1.000000,0.000000,0.000000,
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.550460,0.162398,0.000000,1.000000;;
 }
Mesh fuselg2 {
 8;
 0.091675;-0.930972;0.000000;,
 0.091675;-0.930972;0.000000;,
 -0.045838;-0.930972;0.079393;,
 -0.045838;-0.930972;-0.079393;,
 -0.045838;-0.930972;-0.079393;,
 -0.045838;-0.930972;0.079393;,
 0.091675;-0.930972;0.000000;,
 0.000000;0.937137;0.000000;;

 4;
 3;7,1,3;,
 3;7,2,0;,
 3;7,3,2;,
 3;5,4,6;;

 MeshMaterialList {
  1;
  4;
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  8;
  0.724555;-0.689217;0.000000;,
  0.724555;-0.689217;0.000000;,
  -0.362278;-0.689217;0.627483;,
  -0.362278;-0.689217;-0.627483;,
  -0.362278;-0.689217;-0.627483;,
  -0.362278;-0.689217;0.627483;,
  0.724555;-0.689217;0.000000;,
  0.000000;1.000000;0.000000;;

  4;
  3;7,1,3;,
  3;7,2,0;,
  3;7,3,2;,
  3;5,4,6;;
 }
 MeshTextureCoords {
 8;
 0.085938;0.984375;,
 0.023438;0.984375;,
 0.023438;0.984375;,
 0.085938;0.984375;,
 0.390625;0.593750;,
 0.257812;0.593750;,
 0.320312;0.710938;,
 0.054688;0.265625;;
 }
}
}
}
Frame frm-fuselg4 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.639643,-0.861107,0.000000,1.000000;;
 }
Mesh fuselg4 {
 24;
 -0.000327;-0.185925;0.185925;,
 -0.000327;-0.185925;0.185925;,
 -0.000327;-0.185925;-0.185925;,
 -0.000327;-0.185925;-0.185925;,
 -0.000327;0.185925;0.185925;,
 -0.000327;0.185925;0.185925;,
 -0.000327;0.185925;-0.185925;,
 -0.000327;0.185925;-0.185925;,
 0.413753;-0.185925;0.185925;,
 0.413753;-0.185925;0.185925;,
 0.413753;-0.185925;-0.185925;,
 0.413753;-0.185925;-0.185925;,
 0.413753;0.185925;0.185925;,
 0.413753;0.185925;0.185925;,
 0.413753;0.185925;-0.185925;,
 0.413753;0.185925;-0.185925;,
 0.413753;0.185925;-0.185925;,
 0.413753;0.185925;0.185925;,
 0.413753;-0.185925;-0.185925;,
 0.413753;-0.185925;0.185925;,
 -0.000327;0.185925;-0.185925;,
 -0.000327;0.185925;0.185925;,
 -0.000327;-0.185925;-0.185925;,
 -0.000327;-0.185925;0.185925;;

 6;
 4;13,15,7,5;,
 4;16,12,9,10;,
 4;6,14,11,3;,
 4;17,4,1,8;,
 4;0,2,18,19;,
 4;23,21,20,22;;

 MeshMaterialList {
  4;
  6;
  0,
  0,
  1,
  1,
  2,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.577350;-0.577350;0.577350;,
  -0.577350;-0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  0.577350;-0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;0.577350;,
  0.577350;-0.577350;-0.577350;,
  0.577350;-0.577350;0.577350;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;0.577350;,
  -0.577350;-0.577350;-0.577350;,
  -0.577350;-0.577350;0.577350;;

  6;
  4;13,15,7,5;,
  4;16,12,9,10;,
  4;6,14,11,3;,
  4;17,4,1,8;,
  4;0,2,18,19;,
  4;23,21,20,22;;
 }
 MeshTextureCoords {
 24;
 0.734375;0.734375;,
 0.734375;0.984375;,
 0.953125;0.734375;,
 0.953125;0.984375;,
 0.953125;0.984375;,
 0.734375;0.984375;,
 0.734375;0.984375;,
 0.953125;0.984375;,
 0.734375;0.734375;,
 0.375000;0.656250;,
 0.695312;0.656250;,
 0.953125;0.734375;,
 0.375000;0.984375;,
 0.734375;0.734375;,
 0.734375;0.734375;,
 0.953125;0.734375;,
 0.695312;0.984375;,
 0.953125;0.734375;,
 0.953125;0.984375;,
 0.734375;0.984375;,
 0.695312;0.656250;,
 0.375000;0.656250;,
 0.695312;0.984375;,
 0.375000;0.984375;;
 }
}
Frame frm-fuselg5 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.407340,0.016946,0.000000,1.000000;;
 }
Mesh fuselg5 {
 15;
 0.822400;0.000000;0.000000;,
 -0.981601;0.040226;0.069673;,
 -0.981601;0.040226;0.069673;,
 -0.981601;0.040226;-0.069673;,
 -0.981601;0.040226;-0.069673;,
 -1.129447;0.361281;0.000000;,
 -0.981601;0.363695;0.069673;,
 -0.981601;0.363695;-0.069673;,
 -0.981601;0.363695;-0.069673;,
 -0.981601;0.363695;0.069673;,
 -1.129447;0.361281;0.000000;,
 -0.981601;0.040226;-0.069673;,
 -0.981601;0.040226;0.069673;,
 -1.129447;-0.080451;0.000000;,
 0.822400;0.000000;0.000000;;

 7;
 3;0,13,4;,
 4;10,8,4,13;,
 3;0,2,13;,
 4;9,10,13,2;,
 3;14,3,1;,
 3;6,7,5;,
 4;7,6,12,11;;

 MeshMaterialList {
  1;
  7;
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  15;
  0.857266;-0.514874;0.000000;,
  0.293482;0.221728;0.929895;,
  0.293482;0.221728;0.929895;,
  0.293482;0.221728;-0.929895;,
  0.293482;0.221728;-0.929895;,
  -0.655942;0.754811;0.000000;,
  0.382034;0.685307;0.620003;,
  0.382034;0.685307;-0.620003;,
  0.382034;0.685307;-0.620003;,
  0.382034;0.685307;0.620003;,
  -0.655942;0.754811;0.000000;,
  0.293482;0.221728;-0.929895;,
  0.293482;0.221728;0.929895;,
  -0.614771;-0.788706;0.000000;,
  0.857266;-0.514874;0.000000;;

  7;
  3;0,13,4;,
  4;10,8,4,13;,
  3;0,2,13;,
  4;9,10,13,2;,
  3;14,3,1;,
  3;6,7,5;,
  4;7,6,12,11;;
 }
 MeshTextureCoords {
 15;
 0.343750;0.984375;,
 0.023438;0.984375;,
 0.101562;0.140625;,
 0.085938;0.984375;,
 0.101562;0.140625;,
 0.445312;0.054688;,
 0.398438;0.085938;,
 0.398438;0.015625;,
 0.242188;0.085938;,
 0.242188;0.085938;,
 0.203125;0.023438;,
 0.242188;0.015625;,
 0.242188;0.085938;,
 0.015625;0.093750;,
 0.054688;0.265625;;
 }
}
}
}
Frame frm-bfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bfuselg {
 29;
 0.649519;-1.313813;0.375000;,
 0.386464;-1.790249;0.223125;,
 0.000000;-1.313813;0.750000;,
 0.000000;-1.313813;0.750000;,
 0.000000;-1.790249;0.446250;,
 0.000000;-1.790249;0.446250;,
 -0.649519;-1.313813;0.375000;,
 -0.386464;-1.790249;0.223125;,
 -0.649519;-1.313813;-0.375000;,
 -0.649519;-1.313813;-0.375000;,
 -0.386464;-1.790249;-0.223125;,
 -0.386464;-1.790249;-0.223125;,
 0.000000;-1.313813;-0.750000;,
 0.649519;-1.313813;-0.375000;,
 0.649519;-1.313813;-0.375000;,
 0.386464;-1.790249;-0.223125;,
 0.386464;-1.790249;-0.223125;,
 0.386464;-1.790249;-0.223125;,
 0.649519;-1.313813;-0.375000;,
 0.000000;-1.790249;-0.446250;,
 0.000000;-1.313813;-0.750000;,
 -0.386464;-1.790249;-0.223125;,
 -0.649519;-1.313813;-0.375000;,
 -0.386464;-1.790249;0.223125;,
 -0.649519;-1.313813;0.375000;,
 0.000000;-1.790249;0.446250;,
 0.000000;-1.313813;0.750000;,
 0.386464;-1.790249;0.223125;,
 0.649519;-1.313813;0.375000;;

 14;
 3;1,5,11;,
 3;5,23,11;,
 3;19,17,1;,
 3;1,11,19;,
 4;3,6,7,4;,
 4;6,9,10,7;,
 4;8,12,19,21;,
 4;12,14,16,19;,
 4;0,2,25,27;,
 4;13,0,27,15;,
 3;28,18,20;,
 3;22,24,26;,
 3;20,22,26;,
 3;20,26,28;;

 MeshMaterialList {
  3;
  14;
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
  2,
  2,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  29;
  0.759338;0.480840;0.438404;,
  0.331150;-0.924006;0.191190;,
  0.000000;0.752152;0.658990;,
  0.000000;0.752152;0.658990;,
  0.000000;-0.876808;0.480840;,
  0.000000;-0.876808;0.480840;,
  -0.865166;-0.044530;0.499504;,
  -0.546176;-0.776051;0.315335;,
  -0.759338;0.480840;-0.438404;,
  -0.759338;0.480840;-0.438404;,
  -0.331150;-0.924005;-0.191190;,
  -0.331150;-0.924005;-0.191190;,
  0.000000;0.752152;-0.658990;,
  0.865166;-0.044530;-0.499504;,
  0.865166;-0.044530;-0.499504;,
  0.546176;-0.776051;-0.315335;,
  0.546176;-0.776051;-0.315335;,
  0.546176;-0.776051;-0.315335;,
  0.865166;-0.044530;-0.499504;,
  0.000000;-0.876808;-0.480840;,
  0.000000;0.752152;-0.658990;,
  -0.331150;-0.924005;-0.191190;,
  -0.759338;0.480840;-0.438404;,
  -0.546176;-0.776051;0.315335;,
  -0.865166;-0.044530;0.499504;,
  0.000000;-0.876808;0.480840;,
  0.000000;0.752152;0.658990;,
  0.331150;-0.924006;0.191190;,
  0.759338;0.480840;0.438404;;

  14;
  3;1,5,11;,
  3;5,23,11;,
  3;19,17,1;,
  3;1,11,19;,
  4;3,6,7,4;,
  4;6,9,10,7;,
  4;8,12,19,21;,
  4;12,14,16,19;,
  4;0,2,25,27;,
  4;13,0,27,15;,
  3;28,18,20;,
  3;22,24,26;,
  3;20,22,26;,
  3;20,26,28;;
 }
 MeshTextureCoords {
 29;
 0.960938;0.375000;,
 0.312500;0.578125;,
 0.859375;0.718750;,
 0.859375;0.031250;,
 0.601562;0.171875;,
 0.187500;0.375000;,
 0.960938;0.375000;,
 0.664062;0.375000;,
 0.859375;0.031250;,
 0.859375;0.718750;,
 0.601562;0.578125;,
 0.546875;0.164062;,
 0.960938;0.375000;,
 0.859375;0.031250;,
 0.859375;0.718750;,
 0.601562;0.171875;,
 0.601562;0.578125;,
 0.546875;0.578125;,
 0.546875;0.164062;,
 0.664062;0.375000;,
 0.664062;0.375000;,
 0.601562;0.171875;,
 0.546875;0.578125;,
 0.312500;0.164062;,
 0.312500;0.578125;,
 0.601562;0.578125;,
 0.187500;0.375000;,
 0.664062;0.375000;,
 0.312500;0.164062;;
 }
}
Frame frm-tfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh tfuselg {
 25;
 0.649519;1.313813;0.375000;,
 0.386464;1.790249;0.223125;,
 0.000000;1.313813;0.750000;,
 0.000000;1.790249;0.446250;,
 -0.649519;1.313813;0.375000;,
 -0.386464;1.790249;0.223125;,
 -0.649519;1.313813;-0.375000;,
 -0.649519;1.313813;-0.375000;,
 -0.386464;1.790249;-0.223125;,
 -0.386464;1.790249;-0.223125;,
 0.000000;1.313813;-0.750000;,
 0.649519;1.313813;-0.375000;,
 0.386464;1.790249;-0.223125;,
 0.386464;1.790249;-0.223125;,
 0.649519;1.313813;-0.375000;,
 0.000000;1.790249;-0.446250;,
 0.000000;1.313813;-0.750000;,
 -0.386464;1.790249;-0.223125;,
 -0.649519;1.313813;-0.375000;,
 -0.386464;1.790249;0.223125;,
 -0.649519;1.313813;0.375000;,
 0.000000;1.790249;0.446250;,
 0.000000;1.313813;0.750000;,
 0.386464;1.790249;0.223125;,
 0.649519;1.313813;0.375000;;

 14;
 3;9,3,1;,
 3;9,19,3;,
 3;1,13,15;,
 3;15,9,1;,
 4;21,5,4,2;,
 4;5,8,7,4;,
 4;17,15,10,6;,
 4;15,12,11,10;,
 4;23,21,2,0;,
 4;12,23,0,11;,
 3;16,14,24;,
 3;22,20,18;,
 3;22,18,16;,
 3;24,22,16;;

 MeshMaterialList {
  2;
  14;
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
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "acs37.bmp";
 }
 }
}
 MeshNormals {
  25;
  0.759338;-0.480840;0.438404;,
  0.331150;0.924006;0.191190;,
  0.000000;-0.752152;0.658990;,
  0.000000;0.876808;0.480840;,
  -0.865166;0.044530;0.499504;,
  -0.546176;0.776051;0.315335;,
  -0.759338;-0.480840;-0.438404;,
  -0.759338;-0.480840;-0.438404;,
  -0.331150;0.924006;-0.191190;,
  -0.331150;0.924006;-0.191190;,
  0.000000;-0.752152;-0.658990;,
  0.865166;0.044530;-0.499504;,
  0.546176;0.776051;-0.315335;,
  0.546176;0.776051;-0.315335;,
  0.865166;0.044530;-0.499504;,
  0.000000;0.876808;-0.480840;,
  0.000000;-0.752152;-0.658990;,
  -0.331150;0.924006;-0.191190;,
  -0.759338;-0.480840;-0.438404;,
  -0.546176;0.776051;0.315335;,
  -0.865166;0.044530;0.499504;,
  0.000000;0.876808;0.480840;,
  0.000000;-0.752152;0.658990;,
  0.331150;0.924006;0.191190;,
  0.759338;-0.480840;0.438404;;

  14;
  3;9,3,1;,
  3;9,19,3;,
  3;1,13,15;,
  3;15,9,1;,
  4;21,5,4,2;,
  4;5,8,7,4;,
  4;17,15,10,6;,
  4;15,12,11,10;,
  4;23,21,2,0;,
  4;12,23,0,11;,
  3;16,14,24;,
  3;22,20,18;,
  3;22,18,16;,
  3;24,22,16;;
 }
 MeshTextureCoords {
 25;
 0.960938;0.375000;,
 0.312500;0.164062;,
 0.859375;0.718750;,
 0.187500;0.375000;,
 0.960938;0.375000;,
 0.664062;0.375000;,
 0.859375;0.718750;,
 0.859375;0.031250;,
 0.601562;0.171875;,
 0.546875;0.578125;,
 0.960938;0.375000;,
 0.859375;0.031250;,
 0.601562;0.171875;,
 0.546875;0.164062;,
 0.546875;0.578125;,
 0.664062;0.375000;,
 0.664062;0.375000;,
 0.601562;0.578125;,
 0.546875;0.164062;,
 0.312500;0.578125;,
 0.312500;0.164062;,
 0.601562;0.578125;,
 0.187500;0.375000;,
 0.664062;0.375000;,
 0.312500;0.578125;;
 }
}
Frame frm-mfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh mfuselg {
 12;
 0.649519;1.313813;0.375000;,
 0.649519;-1.313813;0.375000;,
 0.649519;1.313813;-0.375000;,
 0.649519;-1.313813;-0.375000;,
 0.000000;1.313813;-0.750000;,
 0.000000;-1.313813;-0.750000;,
 -0.649519;1.313813;-0.375000;,
 -0.649519;-1.313813;-0.375000;,
 -0.649519;1.313813;0.375000;,
 -0.649519;-1.313813;0.375000;,
 0.000000;1.313813;0.750000;,
 0.000000;-1.313813;0.750000;;

 12;
 3;4,2,5;,
 3;2,3,5;,
 3;0,1,3;,
 3;8,9,11;,
 3;10,8,11;,
 3;0,10,1;,
 3;10,11,1;,
 3;6,4,7;,
 3;4,5,7;,
 3;2,0,3;,
 3;8,6,9;,
 3;6,7,9;;

 MeshMaterialList {
  1;
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
  0,
  0;
Material {
 0.730496;0.893617;1.000000;0.250000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.730496;0.893617;1.000000;;
 }
}
 MeshNormals {
  12;
  0.944911;0.000000;0.327327;,
  0.755929;0.000000;0.654654;,
  0.755929;0.000000;-0.654653;,
  0.944911;0.000000;-0.327327;,
  -0.188982;0.000000;-0.981981;,
  0.188983;0.000000;-0.981980;,
  -0.944911;0.000000;-0.327327;,
  -0.755929;0.000000;-0.654654;,
  -0.755929;0.000000;0.654654;,
  -0.944911;0.000000;0.327327;,
  0.188982;0.000000;0.981981;,
  -0.188982;0.000000;0.981981;;

  12;
  3;4,2,5;,
  3;2,3,5;,
  3;0,1,3;,
  3;8,9,11;,
  3;10,8,11;,
  3;0,10,1;,
  3;10,11,1;,
  3;6,4,7;,
  3;4,5,7;,
  3;2,0,3;,
  3;8,6,9;,
  3;6,7,9;;
 }
 MeshTextureCoords {
 12;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
Frame frm-SS {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh SS {
 40;
 0.000000;-0.097500;0.000000;,
 0.000000;-0.097500;0.000000;,
 0.000000;-0.097500;0.000000;,
 0.000000;0.097500;0.000000;,
 0.000000;0.097500;0.000000;,
 0.042745;-0.068943;0.000000;,
 0.060450;0.000000;0.000000;,
 0.042745;0.068943;0.000000;,
 -0.021372;-0.068943;0.037018;,
 -0.030225;0.000000;0.052351;,
 -0.021372;0.068943;0.037018;,
 -0.042745;-0.068943;0.000000;,
 -0.060450;0.000000;0.000000;,
 -0.042745;0.068943;0.000000;,
 -0.021372;-0.068943;-0.037018;,
 -0.030225;0.000000;-0.052351;,
 -0.021372;0.068943;-0.037018;,
 0.021372;-0.068943;-0.037018;,
 0.030225;0.000000;-0.052351;,
 0.021372;0.068943;-0.037018;,
 0.021372;0.068943;-0.037018;,
 0.030225;0.000000;-0.052351;,
 0.021372;-0.068943;-0.037018;,
 -0.021372;0.068943;-0.037018;,
 -0.030225;0.000000;-0.052351;,
 -0.021372;-0.068943;-0.037018;,
 -0.042745;0.068943;0.000000;,
 -0.060450;0.000000;0.000000;,
 -0.042745;-0.068943;0.000000;,
 -0.021372;0.068943;0.037018;,
 -0.030225;0.000000;0.052351;,
 -0.021372;-0.068943;0.037018;,
 0.021372;0.068943;0.037018;,
 0.030225;0.000000;0.052351;,
 0.021372;-0.068943;0.037018;,
 0.042745;0.068943;0.000000;,
 0.060450;0.000000;0.000000;,
 0.042745;-0.068943;0.000000;,
 0.000000;0.097500;0.000000;,
 0.000000;-0.097500;0.000000;;

 24;
 3;2,5,34;,
 4;6,33,34,5;,
 4;7,32,33,6;,
 3;4,32,7;,
 3;2,34,8;,
 4;33,9,8,34;,
 4;32,10,9,33;,
 3;4,10,32;,
 3;1,31,11;,
 4;30,12,11,31;,
 4;29,13,12,30;,
 3;3,13,29;,
 3;0,28,14;,
 4;27,15,14,28;,
 4;26,16,15,27;,
 3;4,16,26;,
 3;39,25,17;,
 4;24,18,17,25;,
 4;23,19,18,24;,
 3;38,19,23;,
 3;2,22,37;,
 4;21,36,37,22;,
 4;20,35,36,21;,
 3;4,35,20;;

 MeshMaterialList {
  1;
  24;
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
  0;
Material {
 1.000000;0.000000;0.000000;0.984848;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;0.000000;0.000000;;
 }
}
 MeshNormals {
  40;
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.839759;-0.542960;0.000000;,
  1.000000;0.000000;0.000000;,
  0.839759;0.542960;0.000000;,
  -0.419880;-0.542960;0.727252;,
  -0.500000;0.000000;0.866025;,
  -0.419880;0.542960;0.727252;,
  -0.839759;-0.542960;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.839759;0.542960;0.000000;,
  -0.419879;-0.542960;-0.727253;,
  -0.500000;0.000000;-0.866025;,
  -0.419879;0.542960;-0.727253;,
  0.419880;-0.542960;-0.727252;,
  0.500000;0.000000;-0.866025;,
  0.419880;0.542960;-0.727252;,
  0.419880;0.542960;-0.727252;,
  0.500000;0.000000;-0.866025;,
  0.419880;-0.542960;-0.727252;,
  -0.419879;0.542960;-0.727253;,
  -0.500000;0.000000;-0.866025;,
  -0.419879;-0.542960;-0.727253;,
  -0.839759;0.542960;0.000000;,
  -1.000000;0.000000;0.000000;,
  -0.839759;-0.542960;0.000000;,
  -0.419880;0.542960;0.727252;,
  -0.500000;0.000000;0.866025;,
  -0.419880;-0.542960;0.727252;,
  0.419879;0.542960;0.727253;,
  0.500000;0.000000;0.866025;,
  0.419879;-0.542960;0.727253;,
  0.839759;0.542960;0.000000;,
  1.000000;0.000000;0.000000;,
  0.839759;-0.542960;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  24;
  3;2,5,34;,
  4;6,33,34,5;,
  4;7,32,33,6;,
  3;4,32,7;,
  3;2,34,8;,
  4;33,9,8,34;,
  4;32,10,9,33;,
  3;4,10,32;,
  3;1,31,11;,
  4;30,12,11,31;,
  4;29,13,12,30;,
  3;3,13,29;,
  3;0,28,14;,
  4;27,15,14,28;,
  4;26,16,15,27;,
  3;4,16,26;,
  3;39,25,17;,
  4;24,18,17,25;,
  4;23,19,18,24;,
  3;38,19,23;,
  3;2,22,37;,
  4;21,36,37,22;,
  4;20,35,36,21;,
  3;4,35,20;;
 }
 MeshTextureCoords {
 40;
 0.532692;0.080738;,
 0.510256;0.095082;,
 0.512821;0.090164;,
 0.474359;0.985656;,
 0.500000;1.000000;,
 0.693297;0.298086;,
 0.695513;0.508197;,
 0.696502;0.835111;,
 0.329634;0.298086;,
 0.326923;0.504098;,
 0.326428;0.837160;,
 0.149652;0.312840;,
 0.135256;0.536475;,
 0.164395;0.811750;,
 0.497582;0.241119;,
 0.464103;0.536885;,
 0.491813;0.825685;,
 0.594726;0.287430;,
 0.585898;0.496721;,
 0.584469;0.817488;,
 0.369085;0.828963;,
 0.378205;0.508197;,
 0.413956;0.289889;,
 0.307839;0.820766;,
 0.316667;0.500000;,
 0.318095;0.287430;,
 0.320806;0.827734;,
 0.278846;0.536885;,
 0.277857;0.255463;,
 0.371300;0.815439;,
 0.323077;0.536885;,
 0.324505;0.314889;,
 0.510110;0.833062;,
 0.512820;0.508197;,
 0.516520;0.298086;,
 0.738169;0.841258;,
 0.737179;0.508197;,
 0.731758;0.277594;,
 0.489744;0.990164;,
 0.520513;0.088525;;
 }
}
}
}
}
}
}
AnimationSet {
 Animation anim-acs37 {
  {frm-acs37}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 0.065912;;,
  30; 3; 0.000000, 0.000000, 0.065912;;;
  }
 }
 Animation anim-fuselg1 {
  {frm-fuselg1}
  AnimationKey {
  2;
  2;
  1; 3; 0.639643, 0.000000, 0.000000;;,
  30; 3; 0.639643, 0.000000, 0.000000;;;
  }
 }
 Animation anim-fuselg3 {
  {frm-fuselg3}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.000000, 0.000000, 0.707107;;,  # Original(0.000000, 0.000000, -90.000000) Reextracted(0.000000, 0.000000, -90.000000)
  30; 4; 0.707107, 0.000000, 0.000000, 0.707107;;;  # Original(0.000000, 0.000000, -90.000000) Reextracted(0.000000, 0.000000, -90.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.550460, -0.105912, 0.000000;;,
  30; 3; 0.550460, -0.105912, 0.000000;;;
  }
 }
 Animation anim-fuselg2 {
  {frm-fuselg2}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.000000, 0.000000, 0.707107;;,  # Original(0.000000, 0.000000, -90.000000) Reextracted(0.000000, 0.000000, -90.000000)
  30; 4; 0.707107, 0.000000, 0.000000, 0.707107;;;  # Original(0.000000, 0.000000, -90.000000) Reextracted(0.000000, 0.000000, -90.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.550460, 0.162398, 0.000000;;,
  30; 3; 0.550460, 0.162398, 0.000000;;;
  }
 }
 Animation anim-fuselg4 {
  {frm-fuselg4}
  AnimationKey {
  2;
  2;
  1; 3; 0.639643, -0.861107, 0.000000;;,
  30; 3; 0.639643, -0.861107, 0.000000;;;
  }
 }
 Animation anim-fuselg5 {
  {frm-fuselg5}
  AnimationKey {
  2;
  2;
  1; 3; 0.407340, 0.016946, 0.000000;;,
  30; 3; 0.407340, 0.016946, 0.000000;;;
  }
 }
 Animation anim-SS {
  {frm-SS}
  AnimationKey {
  1;
  29;
  1; 3; 1.000000, 1.000000, 1.000000;;,
  2; 3; 1.000000, 1.000000, 1.000000;;,
  3; 3; 1.651538, 1.921069, 1.649230;;,
  5; 3; 2.954615, 3.763206, 2.947692;;,
  6; 3; 3.606153, 4.684274, 3.596922;;,
  7; 3; 4.257691, 5.605343, 4.246153;;,
  8; 3; 4.909230, 6.526412, 4.895384;;,
  9; 3; 5.560768, 7.447481, 5.544614;;,
  10; 3; 6.212306, 8.368549, 6.193845;;,
  11; 3; 6.863845, 9.289618, 6.843075;;,
  12; 3; 7.515383, 10.210687, 7.492306;;,
  13; 3; 8.166921, 11.131755, 8.141537;;,
  14; 3; 8.818460, 12.052824, 8.790768;;,
  15; 3; 9.469997, 12.973892, 9.439998;;,
  16; 3; 8.905331, 12.175632, 8.877331;;,
  17; 3; 8.340665, 11.377374, 8.314665;;,
  18; 3; 7.775998, 10.579113, 7.751998;;,
  19; 3; 7.211331, 9.780854, 7.189332;;,
  20; 3; 6.646665, 8.982594, 6.626665;;,
  21; 3; 6.081999, 8.184336, 6.063999;;,
  22; 3; 5.517332, 7.386075, 5.501332;;,
  23; 3; 4.952666, 6.587817, 4.938666;;,
  24; 3; 4.387999, 5.789557, 4.375999;;,
  25; 3; 3.823333, 4.991298, 3.813333;;,
  26; 3; 3.258666, 4.193038, 3.250666;;,
  27; 3; 2.694000, 3.394779, 2.688000;;,
  28; 3; 2.129333, 2.596519, 2.125333;;,
  29; 3; 1.564667, 1.798260, 1.562667;;,
  30; 3; 1.000000, 1.000000, 1.000000;;;
  }
 }
  }
