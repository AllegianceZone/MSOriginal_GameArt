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

Frame frm-wep01d {
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
0.000000,-0.000001,0.000022,1.000000;;
 }
Mesh wepbar1 {
 50;
 0.034248;-0.059319;-0.735578;,
 0.034248;-0.059319;-0.537775;,
 0.044522;0.000000;-0.525283;,
 0.068495;0.000000;-0.537775;,
 0.068495;0.000000;-0.537775;,
 0.068495;0.000000;-0.735578;,
 0.068495;0.000000;-0.735578;,
 0.022261;0.038557;-0.000002;,
 0.022261;0.038557;-0.525283;,
 0.022261;0.038557;-0.525283;,
 0.034248;0.059319;-0.537775;,
 0.034248;0.059319;-0.735578;,
 -0.022261;0.038557;-0.525283;,
 -0.034248;0.059319;-0.537775;,
 -0.034248;0.059319;-0.735578;,
 -0.044522;0.000000;-0.525283;,
 -0.068495;0.000000;-0.537775;,
 -0.068495;0.000000;-0.537775;,
 -0.068495;0.000000;-0.735578;,
 -0.068495;0.000000;-0.735578;,
 -0.022261;-0.038557;-0.000002;,
 -0.022261;-0.038557;-0.525283;,
 -0.022261;-0.038557;-0.525283;,
 -0.034248;-0.059319;-0.537775;,
 -0.034248;-0.059319;-0.735578;,
 0.022261;-0.038557;-0.525283;,
 0.022261;-0.038557;-0.525283;,
 0.022261;-0.038557;-0.000002;,
 -0.034248;-0.059319;-0.735578;,
 -0.034248;-0.059319;-0.537775;,
 -0.022261;-0.038557;-0.525283;,
 -0.022261;-0.038557;-0.000002;,
 -0.068495;0.000000;-0.735578;,
 -0.068495;0.000000;-0.537775;,
 -0.044522;0.000000;-0.525283;,
 -0.044522;0.000000;-0.000002;,
 -0.034248;0.059319;-0.735578;,
 -0.034248;0.059319;-0.537775;,
 -0.022261;0.038557;-0.525283;,
 -0.022261;0.038557;-0.000002;,
 0.034248;0.059319;-0.735578;,
 0.034248;0.059319;-0.537775;,
 0.022261;0.038557;-0.525283;,
 0.022261;0.038557;-0.000002;,
 0.068495;0.000000;-0.735578;,
 0.068495;0.000000;-0.537775;,
 0.044522;0.000000;-0.525283;,
 0.044522;0.000000;-0.000002;,
 0.034248;-0.059319;-0.537775;,
 0.034248;-0.059319;-0.735578;;

 40;
 3;6,4,1;,
 3;0,6,1;,
 3;24,19,14;,
 3;0,1,23;,
 3;28,0,23;,
 3;9,7,47;,
 3;2,9,47;,
 3;10,8,46;,
 3;3,10,46;,
 3;11,41,45;,
 3;5,11,45;,
 3;28,23,17;,
 3;18,28,17;,
 3;3,46,25;,
 3;48,3,25;,
 3;29,22,15;,
 3;16,29,15;,
 3;21,20,35;,
 3;34,21,35;,
 3;12,39,43;,
 3;42,12,43;,
 3;13,38,8;,
 3;10,13,8;,
 3;36,37,41;,
 3;11,36,41;,
 3;26,27,31;,
 3;30,26,31;,
 3;2,47,27;,
 3;26,2,27;,
 3;48,25,22;,
 3;29,48,22;,
 3;32,33,37;,
 3;36,32,37;,
 3;34,35,39;,
 3;12,34,39;,
 3;16,15,38;,
 3;13,16,38;,
 3;40,44,49;,
 3;24,14,40;,
 3;40,49,24;;

 MeshMaterialList {
  6;
  40;
  0,
  0,
  1,
  0,
  0,
  2,
  2,
  3,
  3,
  4,
  4,
  0,
  0,
  3,
  3,
  3,
  3,
  5,
  5,
  5,
  5,
  3,
  3,
  4,
  4,
  2,
  2,
  2,
  2,
  3,
  3,
  4,
  4,
  5,
  5,
  3,
  3,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
}
 MeshNormals {
  50;
  0.272352;-0.786214;-0.554700;,
  0.462674;-0.698487;0.545938;,
  0.836245;-0.051444;0.545938;,
  0.836245;0.051444;0.545938;,
  0.836245;0.051444;0.545938;,
  0.918559;-0.176777;-0.353553;,
  0.918559;-0.176777;-0.353553;,
  0.327327;0.944911;0.000000;,
  0.462674;0.698487;0.545938;,
  0.462674;0.698487;0.545938;,
  0.373571;0.749931;0.545938;,
  0.462910;0.534523;-0.707107;,
  -0.373571;0.749931;0.545938;,
  -0.462674;0.698487;0.545938;,
  -0.261117;0.753778;-0.603023;,
  -0.836245;0.051444;0.545938;,
  -0.836245;-0.051444;0.545938;,
  -0.836245;-0.051444;0.545938;,
  -0.918559;0.176776;-0.353553;,
  -0.918559;0.176776;-0.353553;,
  -0.327327;-0.944911;0.000000;,
  -0.462674;-0.698487;0.545938;,
  -0.462674;-0.698487;0.545938;,
  -0.373571;-0.749931;0.545938;,
  -0.462910;-0.534523;-0.707107;,
  0.373571;-0.749931;0.545938;,
  0.373571;-0.749931;0.545938;,
  0.654654;-0.755929;0.000000;,
  -0.462910;-0.534523;-0.707107;,
  -0.373571;-0.749931;0.545938;,
  -0.462674;-0.698487;0.545938;,
  -0.327327;-0.944911;0.000000;,
  -0.918559;0.176776;-0.353553;,
  -0.836245;-0.051444;0.545938;,
  -0.836245;0.051444;0.545938;,
  -0.981980;-0.188983;0.000000;,
  -0.261117;0.753778;-0.603023;,
  -0.462674;0.698487;0.545938;,
  -0.373571;0.749931;0.545938;,
  -0.654654;0.755929;0.000000;,
  0.462910;0.534523;-0.707107;,
  0.373571;0.749931;0.545938;,
  0.462674;0.698487;0.545938;,
  0.327327;0.944911;0.000000;,
  0.918559;-0.176777;-0.353553;,
  0.836245;0.051444;0.545938;,
  0.836245;-0.051444;0.545938;,
  0.981981;0.188982;0.000000;,
  0.462674;-0.698487;0.545938;,
  0.272352;-0.786214;-0.554700;;

  40;
  3;6,4,1;,
  3;0,6,1;,
  3;24,19,14;,
  3;0,1,23;,
  3;28,0,23;,
  3;9,7,47;,
  3;2,9,47;,
  3;10,8,46;,
  3;3,10,46;,
  3;11,41,45;,
  3;5,11,45;,
  3;28,23,17;,
  3;18,28,17;,
  3;3,46,25;,
  3;48,3,25;,
  3;29,22,15;,
  3;16,29,15;,
  3;21,20,35;,
  3;34,21,35;,
  3;12,39,43;,
  3;42,12,43;,
  3;13,38,8;,
  3;10,13,8;,
  3;36,37,41;,
  3;11,36,41;,
  3;26,27,31;,
  3;30,26,31;,
  3;2,47,27;,
  3;26,2,27;,
  3;48,25,22;,
  3;29,48,22;,
  3;32,33,37;,
  3;36,32,37;,
  3;34,35,39;,
  3;12,34,39;,
  3;16,15,38;,
  3;13,16,38;,
  3;40,44,49;,
  3;24,14,40;,
  3;40,49,24;;
 }
 MeshTextureCoords {
 50;
 0.444364;0.518074;,
 0.625470;0.519208;,
 0.582663;0.816190;,
 0.556436;0.085504;,
 0.625230;0.571941;,
 0.444052;0.359169;,
 0.444125;0.570808;,
 0.008418;0.765339;,
 0.498604;0.046794;,
 0.582121;0.764632;,
 0.499127;0.010644;,
 0.444410;0.412815;,
 0.008581;0.900066;,
 0.442374;0.082023;,
 0.497335;0.019808;,
 0.458191;0.205180;,
 0.442508;0.221506;,
 0.626188;0.361007;,
 0.445082;0.359873;,
 0.441813;0.084666;,
 0.584086;0.761079;,
 0.010198;0.759877;,
 0.499496;0.249237;,
 0.625948;0.413740;,
 0.441985;0.219369;,
 0.543100;0.203474;,
 0.583752;0.919879;,
 0.010048;0.920585;,
 0.444843;0.412607;,
 0.500239;0.282853;,
 0.584299;0.972010;,
 0.010596;0.972716;,
 0.445460;0.570100;,
 0.625215;0.568445;,
 0.009467;0.823244;,
 0.583355;0.803075;,
 0.445114;0.518280;,
 0.624869;0.516626;,
 0.460067;0.095935;,
 0.583763;0.891211;,
 0.556266;0.082069;,
 0.624165;0.411160;,
 0.009720;0.975123;,
 0.584255;0.980097;,
 0.556439;0.212439;,
 0.623807;0.357514;,
 0.542443;0.099296;,
 0.008959;0.816896;,
 0.556993;0.217386;,
 0.498220;0.283797;;
 }
}
Frame frm-bwepbar {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000174,-0.096560,0.000111,1.000000;;
 }
Mesh bwepbar {
 36;
 -0.009296;0.017189;-0.537783;,
 -0.009296;0.017189;-0.537783;,
 -0.009296;-0.016000;-0.578997;,
 -0.009296;-0.016000;-0.578997;,
 -0.009296;0.060047;-0.537783;,
 -0.009296;0.060047;-0.537783;,
 -0.009296;0.060047;-0.578997;,
 -0.009296;0.060047;-0.578997;,
 0.009296;0.017189;-0.537783;,
 0.009296;0.017189;-0.537783;,
 0.009296;-0.016000;-0.578997;,
 0.009296;-0.016000;-0.578997;,
 0.009296;0.060047;-0.537783;,
 0.009296;0.060047;-0.537783;,
 0.009296;0.060047;-0.578997;,
 0.009296;0.060047;-0.578997;,
 -0.009296;0.017189;-0.000136;,
 -0.009296;0.017189;-0.000136;,
 -0.009296;-0.016000;-0.000356;,
 -0.009296;-0.016000;-0.000356;,
 0.009296;0.017189;-0.000136;,
 0.009296;0.017189;-0.000136;,
 0.009296;-0.016000;-0.000356;,
 0.009296;-0.016000;-0.000356;,
 0.009296;-0.016000;-0.000356;,
 0.009296;0.017189;-0.000136;,
 -0.009296;-0.016000;-0.000356;,
 -0.009296;0.017189;-0.000136;,
 0.009296;0.060047;-0.578997;,
 0.009296;0.060047;-0.537783;,
 0.009296;-0.016000;-0.578997;,
 0.009296;0.017189;-0.537783;,
 -0.009296;0.060047;-0.578997;,
 -0.009296;0.060047;-0.537783;,
 -0.009296;-0.016000;-0.578997;,
 -0.009296;0.017189;-0.537783;;

 20;
 3;7,3,1;,
 3;5,7,1;,
 3;15,11,2;,
 3;6,15,2;,
 3;13,9,10;,
 3;14,13,10;,
 3;4,0,8;,
 3;12,4,8;,
 3;19,23,21;,
 3;17,19,21;,
 3;28,32,33;,
 3;29,28,33;,
 3;16,1,3;,
 3;18,16,3;,
 3;26,34,30;,
 3;22,26,30;,
 3;24,10,9;,
 3;20,24,9;,
 3;25,31,35;,
 3;27,25,35;;

 MeshMaterialList {
  4;
  20;
  0,
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  2,
  2,
  2,
  2,
  0,
  0,
  3,
  3,
  0,
  0,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01c.bmp";
 }
 }
}
 MeshNormals {
  36;
  -0.801784;0.534522;0.267261;,
  -0.801784;0.534522;0.267261;,
  -0.801784;-0.267261;-0.534522;,
  -0.801784;-0.267261;-0.534522;,
  -0.333333;0.666667;0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;0.408248;-0.408248;,
  0.801784;0.267261;0.534522;,
  0.801784;0.267261;0.534522;,
  0.801784;-0.534522;-0.267261;,
  0.801784;-0.534522;-0.267261;,
  0.816497;0.408248;0.408248;,
  0.816497;0.408248;0.408248;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  -0.817401;0.405988;0.408692;,
  -0.817401;0.405988;0.408692;,
  -0.332354;-0.669121;0.664694;,
  -0.332354;-0.669121;0.664694;,
  0.334321;0.664204;0.668627;,
  0.334321;0.664204;0.668627;,
  0.815595;-0.410504;0.407788;,
  0.815595;-0.410504;0.407788;,
  0.815595;-0.410504;0.407788;,
  0.334321;0.664204;0.668627;,
  -0.332354;-0.669121;0.664694;,
  -0.817401;0.405988;0.408692;,
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.801784;-0.534522;-0.267261;,
  0.801784;0.267261;0.534522;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;0.666667;,
  -0.801784;-0.267261;-0.534522;,
  -0.801784;0.534522;0.267261;;

  20;
  3;7,3,1;,
  3;5,7,1;,
  3;15,11,2;,
  3;6,15,2;,
  3;13,9,10;,
  3;14,13,10;,
  3;4,0,8;,
  3;12,4,8;,
  3;19,23,21;,
  3;17,19,21;,
  3;28,32,33;,
  3;29,28,33;,
  3;16,1,3;,
  3;18,16,3;,
  3;26,34,30;,
  3;22,26,30;,
  3;24,10,9;,
  3;20,24,9;,
  3;25,31,35;,
  3;27,25,35;;
 }
 MeshTextureCoords {
 36;
 0.038733;0.671539;,
 0.450444;0.672009;,
 0.008097;0.671762;,
 0.484375;0.726562;,
 0.116867;0.671783;,
 0.450444;0.601562;,
 0.144814;0.671989;,
 0.484375;0.601562;,
 0.038190;0.729154;,
 0.450444;0.672009;,
 0.484375;0.726562;,
 0.007530;0.726449;,
 0.116323;0.728422;,
 0.450444;0.601562;,
 0.484375;0.601562;,
 0.144247;0.726676;,
 0.007812;0.672009;,
 0.000000;0.000000;,
 0.007994;0.726562;,
 0.000000;0.000000;,
 0.007813;0.672009;,
 0.000000;0.000000;,
 0.448395;0.726664;,
 0.000000;0.000000;,
 0.007994;0.726562;,
 0.446613;0.720521;,
 0.449872;0.671977;,
 0.445952;0.669935;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.007159;0.726481;,
 0.008756;0.725976;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.008636;0.671794;,
 0.008870;0.676758;;
 }
}
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000001,0.735518,1.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-wepbar1 {
  {frm-wepbar1}
  AnimationKey {
  2;
  11;
  0; 3; 0.000000, -0.000001, -0.000022;;,
  1; 3; 0.000000, -0.000001, 0.001810;;,
  2; 3; 0.000000, -0.000001, 0.156587;;,
  3; 3; 0.000000, -0.000001, 0.258135;;,
  6; 3; 0.000000, -0.000001, 0.103357;;,
  8; 3; 0.000000, -0.000001, 0.000172;;,
  9; 3; 0.000000, -0.000001, 0.154171;;,
  10; 3; 0.000000, -0.000001, 0.258940;;,
  13; 3; 0.000000, -0.000001, 0.104162;;,
  14; 3; 0.000000, -0.000001, 0.052570;;,
  15; 3; 0.000000, -0.000001, 0.000977;;;
  }
 }
 Animation anim-bwepbar {
  {frm-bwepbar}
  AnimationKey {
  2;
  2;
  0; 3; -0.000174, -0.096560, -0.000111;;,
  15; 3; -0.000174, -0.096560, -0.000111;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000001, -0.735518;;,
  15; 3; 0.000000, 0.000001, -0.735518;;;
  }
 }
  }

