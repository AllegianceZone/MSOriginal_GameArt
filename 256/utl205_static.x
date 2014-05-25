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

Frame frm-root_2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.282149,1.000000;;
 }
Frame frm-cube38_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,2.449645,-0.593652,1.000000;;
 }
Mesh cube38_1 {
 56;
 -1.730000;-0.870832;1.252132;,
 -1.730000;-0.870832;1.252132;,
 -1.730000;-0.870832;1.252132;,
 -1.730000;-0.870832;1.252132;,
 -1.730000;-0.870832;-1.252132;,
 -1.730000;-0.870832;-1.252132;,
 -1.730000;-0.870832;-1.252132;,
 -1.730000;0.274915;1.252132;,
 -1.730000;0.274915;1.252132;,
 -1.730000;0.274915;1.252132;,
 -1.730000;0.274915;-1.252132;,
 -1.730000;0.274915;-1.252132;,
 1.730000;-0.870832;1.252132;,
 1.730000;-0.870832;1.252132;,
 1.730000;-0.870832;1.252132;,
 1.730000;-0.870832;1.252132;,
 1.730000;-0.870832;-1.252132;,
 1.730000;-0.870832;-1.252132;,
 1.730000;-0.870832;-1.252132;,
 1.730000;0.274915;1.252132;,
 1.730000;0.274915;1.252132;,
 1.730000;0.274915;1.252132;,
 1.730000;0.274915;-1.252132;,
 1.730000;0.274915;-1.252132;,
 0.435960;0.002300;2.610619;,
 0.435960;0.002300;2.610619;,
 -0.435960;0.002300;2.610619;,
 -0.435960;0.002300;2.610619;,
 -0.435960;0.274915;2.610619;,
 -0.435960;0.274915;2.610619;,
 0.435960;0.274915;2.610619;,
 0.435960;0.274915;2.610619;,
 0.327056;-1.706412;0.274681;,
 0.327056;-1.706412;0.274681;,
 -1.301330;-1.706412;0.274681;,
 -1.301330;-1.706412;0.274681;,
 0.327056;-1.706412;-1.269091;,
 0.327056;-1.706412;-1.269091;,
 -1.301330;-1.706412;-1.269091;,
 -1.301330;-1.706412;-1.269091;,
 -1.301330;-1.706412;-1.269091;,
 0.327056;-1.706412;-1.269091;,
 -1.301330;-1.706412;0.274681;,
 0.327056;-1.706412;0.274681;,
 0.435960;0.274915;2.610619;,
 -0.435960;0.274915;2.610619;,
 -0.435960;0.002300;2.610619;,
 0.435960;0.002300;2.610619;,
 1.730000;0.274915;-1.252132;,
 1.730000;0.274915;1.252132;,
 1.730000;-0.870832;-1.252132;,
 1.730000;-0.870832;1.252132;,
 -1.730000;0.274915;-1.252132;,
 -1.730000;0.274915;1.252132;,
 -1.730000;-0.870832;-1.252132;,
 -1.730000;-0.870832;1.252132;;

 14;
 4;9,11,6,3;,
 4;10,23,18,5;,
 4;22,21,15,17;,
 4;31,29,27,25;,
 4;35,39,37,33;,
 4;20,48,52,8;,
 4;24,26,2,14;,
 4;28,30,19,7;,
 4;44,47,13,49;,
 4;46,45,53,1;,
 4;34,32,12,0;,
 4;43,36,16,51;,
 4;41,38,4,50;,
 4;40,42,55,54;;

 MeshMaterialList {
  1;
  14;
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
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  56;
  -0.466022;-0.679370;0.566816;,
  -0.466022;-0.679370;0.566816;,
  -0.466022;-0.679370;0.566816;,
  -0.466022;-0.679370;0.566816;,
  -0.579885;-0.140356;-0.802517;,
  -0.579885;-0.140356;-0.802517;,
  -0.579885;-0.140356;-0.802517;,
  -0.649569;0.707107;0.279393;,
  -0.649569;0.707107;0.279393;,
  -0.649569;0.707107;0.279393;,
  -0.577350;0.577350;-0.577350;,
  -0.577350;0.577350;-0.577350;,
  0.407697;-0.763207;0.501296;,
  0.407697;-0.763207;0.501296;,
  0.407697;-0.763207;0.501296;,
  0.407697;-0.763207;0.501296;,
  0.547194;-0.444276;-0.709365;,
  0.547194;-0.444276;-0.709365;,
  0.547194;-0.444276;-0.709365;,
  0.649569;0.707107;0.279393;,
  0.649569;0.707107;0.279393;,
  0.649569;0.707107;0.279393;,
  0.577350;0.577350;-0.577350;,
  0.577350;0.577350;-0.577350;,
  0.200386;-0.495127;0.845396;,
  0.200386;-0.495127;0.845396;,
  -0.200386;-0.495127;0.845396;,
  -0.200386;-0.495127;0.845396;,
  -0.317804;0.447214;0.836062;,
  -0.317804;0.447214;0.836062;,
  0.317804;0.447214;0.836062;,
  0.317804;0.447214;0.836062;,
  0.186295;-0.953588;0.236566;,
  0.186295;-0.953588;0.236566;,
  -0.359451;-0.895480;0.262510;,
  -0.359451;-0.895480;0.262510;,
  0.237481;-0.853409;-0.463999;,
  0.237481;-0.853409;-0.463999;,
  -0.456085;-0.626315;-0.632231;,
  -0.456085;-0.626315;-0.632231;,
  -0.456085;-0.626315;-0.632231;,
  0.237481;-0.853409;-0.463999;,
  -0.359451;-0.895480;0.262510;,
  0.186295;-0.953588;0.236566;,
  0.317804;0.447214;0.836062;,
  -0.317804;0.447214;0.836062;,
  -0.200386;-0.495127;0.845396;,
  0.200386;-0.495127;0.845396;,
  0.577350;0.577350;-0.577350;,
  0.649569;0.707107;0.279393;,
  0.547194;-0.444276;-0.709365;,
  0.407697;-0.763207;0.501296;,
  -0.577350;0.577350;-0.577350;,
  -0.649569;0.707107;0.279393;,
  -0.579885;-0.140356;-0.802517;,
  -0.466022;-0.679370;0.566816;;

  14;
  4;9,11,6,3;,
  4;10,23,18,5;,
  4;22,21,15,17;,
  4;31,29,27,25;,
  4;35,39,37,33;,
  4;20,48,52,8;,
  4;24,26,2,14;,
  4;28,30,19,7;,
  4;44,47,13,49;,
  4;46,45,53,1;,
  4;34,32,12,0;,
  4;43,36,16,51;,
  4;41,38,4,50;,
  4;40,42,55,54;;
 }
 MeshTextureCoords { 
 56;
 0.197266;0.701319;,
 0.971700;0.815566;,
 0.972863;0.984544;,
 0.645429;0.290944;,
 0.000000;0.578273;,
 0.000000;0.578273;,
 0.643063;0.063128;,
 0.971700;0.815566;,
 1.000000;0.000000;,
 0.858853;0.286920;,
 0.000000;0.000000;,
 0.856562;0.066335;,
 0.193359;0.498194;,
 0.972863;0.984544;,
 0.971700;0.815566;,
 0.484375;0.457179;,
 0.205078;0.695460;,
 0.476563;0.750148;,
 1.000000;0.578273;,
 0.972863;0.984544;,
 1.000000;0.378906;,
 0.973502;0.457031;,
 0.977409;0.738281;,
 1.000000;0.000000;,
 0.666567;0.868250;,
 0.959981;0.840305;,
 0.661006;0.932640;,
 0.959842;0.949388;,
 0.666567;0.868250;,
 0.883662;0.933942;,
 0.661006;0.932640;,
 0.881411;0.851323;,
 0.430534;0.437500;,
 0.197266;0.701319;,
 0.432487;0.798828;,
 0.432487;0.798828;,
 0.432487;0.792969;,
 0.193359;0.498194;,
 0.123893;1.000000;,
 0.430534;0.437500;,
 0.432487;0.798828;,
 0.594525;1.000000;,
 0.430534;0.437500;,
 0.426627;0.449219;,
 0.666567;0.868250;,
 0.661006;0.932640;,
 0.666567;0.868250;,
 0.661006;0.932640;,
 0.623047;0.376953;,
 0.971700;0.815566;,
 1.000000;0.578273;,
 0.199219;0.502101;,
 0.628906;0.005859;,
 0.972863;0.984544;,
 0.197266;0.701319;,
 0.193359;0.498194;;
 }
}
Frame frm-cube37_1 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,-1.000000,-0.000000,0.000000,
-0.699529,-2.269271,-0.629066,1.000000;;
 }
Mesh cube37_1 {
 70;
 0.586789;0.559022;0.540410;,
 0.586789;0.559022;0.540410;,
 0.586789;0.559022;0.540410;,
 -1.045600;0.559022;0.540410;,
 -1.045600;0.559022;0.540410;,
 0.655736;-0.559022;-0.178951;,
 0.655736;-0.559022;-0.178951;,
 0.655736;0.559022;-2.453642;,
 0.655736;0.559022;-2.453642;,
 0.655736;0.559022;-2.453642;,
 0.655736;0.559022;-0.178951;,
 0.655736;0.559022;-0.178951;,
 0.655736;0.559022;-0.178951;,
 0.125052;0.156218;-3.521465;,
 0.125052;0.156218;-3.521465;,
 -0.583862;0.156218;-3.521465;,
 -0.583862;0.156218;-3.521465;,
 -0.583862;0.641763;-3.521465;,
 -0.583862;0.641763;-3.521465;,
 -0.583862;0.641763;-3.521465;,
 0.125052;0.641763;-3.521465;,
 0.125052;0.641763;-3.521465;,
 0.125052;0.641763;-3.521465;,
 -0.857875;1.070343;-2.125501;,
 -0.857875;1.070343;-2.125501;,
 -0.857875;1.070343;-2.125501;,
 0.399065;1.070343;-2.125501;,
 0.399065;1.070343;-2.125501;,
 0.399065;1.070343;-2.125501;,
 -1.108777;0.559022;-2.453642;,
 -1.108777;0.559022;-2.453642;,
 -1.108777;0.559022;-2.453642;,
 -1.108777;-0.559022;-0.178951;,
 -1.108777;-0.559022;-0.178951;,
 -1.108777;0.559022;-0.178951;,
 -1.108777;0.559022;-0.178951;,
 -1.045600;-0.559022;0.540410;,
 -1.045600;-0.559022;0.540410;,
 -1.045600;-0.559022;0.540410;,
 0.586789;-0.559022;0.540410;,
 0.586789;-0.559022;0.540410;,
 0.586789;-0.559022;0.540410;,
 0.655736;-0.559022;-2.453642;,
 0.655736;-0.559022;-2.453642;,
 0.655736;-0.559022;-2.453642;,
 0.655736;-0.559022;-2.453642;,
 -1.108777;-0.559022;-2.453642;,
 -1.108777;-0.559022;-2.453642;,
 -1.108777;-0.559022;-2.453642;,
 -1.108777;-0.559022;-2.453642;,
 -1.108777;-0.559022;-2.453642;,
 0.655736;-0.559022;-2.453642;,
 0.586789;-0.559022;0.540410;,
 -1.045600;-0.559022;0.540410;,
 -1.108777;0.559022;-0.178951;,
 -1.108777;-0.559022;-0.178951;,
 -1.108777;0.559022;-2.453642;,
 0.399065;1.070343;-2.125501;,
 0.399065;1.070343;0.071619;,
 -0.857875;1.070343;0.071619;,
 -0.857875;1.070343;-2.125501;,
 0.125052;0.641763;-3.521465;,
 -0.583862;0.641763;-3.521465;,
 -0.583862;0.156218;-3.521465;,
 0.125052;0.156218;-3.521465;,
 0.655736;0.559022;-0.178951;,
 0.655736;0.559022;-2.453642;,
 0.655736;-0.559022;-0.178951;,
 -1.045600;0.559022;0.540410;,
 0.586789;0.559022;0.540410;;

 21;
 3;2,12,58;,
 4;38,41,1,4;,
 4;6,45,9,11;,
 4;14,16,19,22;,
 4;44,40,37,49;,
 4;25,59,58,28;,
 3;8,21,27;,
 4;36,3,35,33;,
 4;18,15,48,31;,
 4;43,47,63,13;,
 4;58,59,68,0;,
 3;53,32,46;,
 4;5,10,69,39;,
 4;26,58,65,7;,
 3;52,42,67;,
 4;64,20,66,51;,
 4;24,57,61,17;,
 4;30,50,55,34;,
 3;23,62,29;,
 4;59,60,56,54;,
 3;68,59,54;;

 MeshMaterialList {
  1;
  21;
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
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  70;
  0.637874;0.376037;0.672095;,
  0.637874;0.376037;0.672095;,
  0.637874;0.376037;0.672095;,
  -0.641001;0.375497;0.669417;,
  -0.641001;0.375497;0.669417;,
  0.893202;-0.447622;0.042706;,
  0.893202;-0.447622;0.042706;,
  0.939633;0.274164;-0.204754;,
  0.939633;0.274164;-0.204754;,
  0.939633;0.274164;-0.204754;,
  0.974148;0.221013;0.046788;,
  0.974148;0.221013;0.046788;,
  0.974148;0.221013;0.046788;,
  0.381899;-0.354322;-0.853586;,
  0.381899;-0.354322;-0.853586;,
  -0.383142;-0.354713;-0.852866;,
  -0.383142;-0.354713;-0.852866;,
  -0.561020;0.521676;-0.642737;,
  -0.561020;0.521676;-0.642737;,
  -0.561020;0.521676;-0.642737;,
  0.558053;0.523380;-0.643934;,
  0.558053;0.523380;-0.643934;,
  0.558053;0.523380;-0.643934;,
  -0.477051;0.860497;-0.178795;,
  -0.477051;0.860497;-0.178795;,
  -0.477051;0.860497;-0.178795;,
  0.473220;0.862643;-0.178634;,
  0.473220;0.862643;-0.178634;,
  0.473220;0.862643;-0.178634;,
  -0.941208;0.269905;-0.203170;,
  -0.941208;0.269905;-0.203170;,
  -0.941208;0.269905;-0.203170;,
  -0.893398;-0.447557;0.039156;,
  -0.893398;-0.447557;0.039156;,
  -0.975150;0.217348;0.042914;,
  -0.975150;0.217348;0.042914;,
  -0.477627;-0.707107;0.521413;,
  -0.477627;-0.707107;0.521413;,
  -0.477627;-0.707107;0.521413;,
  0.475550;-0.707107;0.523309;,
  0.475550;-0.707107;0.523309;,
  0.475550;-0.707107;0.523309;,
  0.502074;-0.833758;-0.229717;,
  0.502074;-0.833758;-0.229717;,
  0.502074;-0.833758;-0.229717;,
  0.502074;-0.833758;-0.229717;,
  -0.502473;-0.833802;-0.228681;,
  -0.502473;-0.833802;-0.228681;,
  -0.502473;-0.833802;-0.228681;,
  -0.502473;-0.833802;-0.228681;,
  -0.502473;-0.833802;-0.228681;,
  0.502074;-0.833758;-0.229717;,
  0.475550;-0.707107;0.523309;,
  -0.477627;-0.707107;0.521413;,
  -0.975150;0.217348;0.042914;,
  -0.893398;-0.447557;0.039156;,
  -0.941208;0.269905;-0.203170;,
  0.473220;0.862643;-0.178634;,
  0.536288;0.801201;0.265465;,
  -0.539758;0.799323;0.264089;,
  -0.477051;0.860497;-0.178795;,
  0.558053;0.523380;-0.643934;,
  -0.561020;0.521676;-0.642737;,
  -0.383142;-0.354713;-0.852866;,
  0.381899;-0.354322;-0.853586;,
  0.974148;0.221013;0.046788;,
  0.939633;0.274164;-0.204754;,
  0.893202;-0.447622;0.042706;,
  -0.641001;0.375497;0.669417;,
  0.637874;0.376037;0.672095;;

  21;
  3;2,12,58;,
  4;38,41,1,4;,
  4;6,45,9,11;,
  4;14,16,19,22;,
  4;44,40,37,49;,
  4;25,59,58,28;,
  3;8,21,27;,
  4;36,3,35,33;,
  4;18,15,48,31;,
  4;43,47,63,13;,
  4;58,59,68,0;,
  3;53,32,46;,
  4;5,10,69,39;,
  4;26,58,65,7;,
  3;52,42,67;,
  4;64,20,66,51;,
  4;24,57,61,17;,
  4;30,50,55,34;,
  3;23,62,29;,
  4;59,60,56,54;,
  3;68,59,54;;
 }
 MeshTextureCoords { 
 70;
 0.958157;0.467211;,
 0.988312;0.460364;,
 0.958157;0.467211;,
 0.980783;0.671212;,
 0.988596;0.737618;,
 0.896484;0.580078;,
 0.896484;0.580078;,
 0.429796;0.418975;,
 0.430162;0.439492;,
 0.478516;0.458984;,
 0.896484;0.455078;,
 0.896484;0.455078;,
 0.845117;0.411307;,
 0.201172;0.501953;,
 0.584436;0.628207;,
 0.221534;0.688368;,
 0.588722;0.754774;,
 0.202822;0.692405;,
 0.220278;0.617917;,
 0.724184;0.750730;,
 0.217945;0.508928;,
 0.203553;0.504947;,
 0.723804;0.626116;,
 0.431641;0.720703;,
 0.431641;0.720703;,
 0.422208;0.705477;,
 0.428209;0.506550;,
 0.435547;0.509766;,
 0.428209;0.506550;,
 0.427643;0.791868;,
 0.427734;0.451172;,
 0.413061;0.676992;,
 0.972800;0.798663;,
 0.961647;0.766977;,
 0.201172;0.501953;,
 0.959345;0.677894;,
 0.983085;0.760296;,
 0.932068;0.738068;,
 0.490898;0.740765;,
 0.994141;0.580078;,
 0.964695;0.460189;,
 0.494520;0.473276;,
 0.395521;0.471589;,
 0.427734;0.451172;,
 0.399427;0.457917;,
 0.478516;0.587891;,
 0.403929;0.796471;,
 0.431641;0.794922;,
 0.419269;0.769982;,
 0.396097;0.772905;,
 0.431641;0.794922;,
 0.421232;0.563812;,
 0.943211;0.469954;,
 0.928162;0.763458;,
 0.848824;0.799825;,
 0.205078;0.697266;,
 0.423737;0.803587;,
 0.435547;0.509766;,
 0.841866;0.504712;,
 0.839771;0.697781;,
 0.422208;0.705477;,
 0.202902;0.505598;,
 0.201520;0.693056;,
 0.205078;0.697266;,
 0.221154;0.573519;,
 0.845117;0.411307;,
 0.418930;0.459104;,
 0.945150;0.432789;,
 0.961878;0.721754;,
 0.994141;0.451172;;
 }
}
Frame frm-cube43_1 {
  FrameTransformMatrix {
0.000000,0.000000,1.000000,0.000000,
-0.801123,0.598500,0.000000,0.000000,
-0.598500,-0.801123,0.000000,0.000000,
-0.217025,0.508511,-3.819906,1.000000;;
 }
Frame frm-cube44_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.873736,-0.486400,0.000000,
0.000000,0.486400,0.873736,0.000000,
1.907278,0.000000,0.000001,1.000000;;
 }
Mesh cube44_1 {
 24;
 -1.530412;-0.042820;0.337801;,
 -1.530412;-0.042820;0.337801;,
 -1.530412;-0.042820;-0.337801;,
 -1.530412;-0.042820;-0.337801;,
 -1.530412;0.042820;0.337801;,
 -1.530412;0.042820;0.337801;,
 -1.530412;0.042820;-0.337801;,
 -1.530412;0.042820;-0.337801;,
 1.530412;-0.042820;0.792960;,
 1.530412;-0.042820;0.792960;,
 1.530412;-0.042820;-0.792960;,
 1.530412;-0.042820;-0.792960;,
 1.530412;0.042820;0.792960;,
 1.530412;0.042820;0.792960;,
 1.530412;0.042820;-0.792960;,
 1.530412;0.042820;-0.792960;,
 1.530412;0.042820;-0.792960;,
 1.530412;0.042820;0.792960;,
 1.530412;-0.042820;-0.792960;,
 1.530412;-0.042820;0.792960;,
 -1.530412;0.042820;-0.337801;,
 -1.530412;0.042820;0.337801;,
 -1.530412;-0.042820;-0.337801;,
 -1.530412;-0.042820;0.337801;;

 6;
 4;1,3,7,5;,
 4;2,11,15,6;,
 4;10,9,13,14;,
 4;8,0,4,12;,
 4;19,18,22,23;,
 4;21,20,16,17;;

 MeshMaterialList {
  1;
  6;
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  24;
  0.632009;0.550968;-0.544976;,
  0.632009;0.550968;-0.544976;,
  0.632009;0.550968;0.544976;,
  0.632009;0.550968;0.544976;,
  0.632009;-0.550968;-0.544976;,
  0.632009;-0.550968;-0.544976;,
  0.632009;-0.550968;0.544976;,
  0.632009;-0.550968;0.544976;,
  -0.518507;0.607925;-0.601313;,
  -0.518507;0.607925;-0.601313;,
  -0.518507;0.607925;0.601313;,
  -0.518507;0.607925;0.601313;,
  -0.518507;-0.607925;-0.601313;,
  -0.518507;-0.607925;-0.601313;,
  -0.518507;-0.607925;0.601313;,
  -0.518507;-0.607925;0.601313;,
  -0.518507;-0.607925;0.601313;,
  -0.518507;-0.607925;-0.601313;,
  -0.518507;0.607925;0.601313;,
  -0.518507;0.607925;-0.601313;,
  0.632009;-0.550968;0.544976;,
  0.632009;-0.550968;-0.544976;,
  0.632009;0.550968;0.544976;,
  0.632009;0.550968;-0.544976;;

  6;
  4;1,3,7,5;,
  4;2,11,15,6;,
  4;10,9,13,14;,
  4;8,0,4,12;,
  4;19,18,22,23;,
  4;21,20,16,17;;
 }
 MeshTextureCoords { 
 24;
 0.021484;0.558594;,
 0.167969;0.560547;,
 0.021484;0.552734;,
 0.167969;0.541016;,
 0.023438;0.539063;,
 0.015625;0.562500;,
 0.021484;0.539063;,
 0.015625;0.539063;,
 0.162109;0.558594;,
 0.007813;0.535156;,
 0.011719;0.556641;,
 0.164063;0.552734;,
 0.164063;0.541016;,
 0.167969;0.535156;,
 0.164063;0.558594;,
 0.164063;0.535156;,
 0.169922;0.539063;,
 0.005859;0.539063;,
 0.005859;0.539063;,
 0.169922;0.539063;,
 0.123047;0.845703;,
 0.048828;0.845703;,
 0.048828;0.845703;,
 0.123047;0.845703;;
 }
}
}
}
Frame frm-cube32_1 {
  FrameTransformMatrix {
0.000000,1.000000,0.000000,0.000000,
0.136400,-0.000000,-0.990654,0.000000,
-0.990654,0.000000,-0.136400,0.000000,
-0.286362,1.321647,-0.028494,1.000000;;
 }
Frame frm-cube33_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.873736,-0.486400,0.000000,
0.000000,0.486400,0.873736,0.000000,
1.907278,-0.000001,-0.000000,1.000000;;
 }
Mesh cube33_1 {
 24;
 -1.530412;-0.042820;0.337801;,
 -1.530412;-0.042820;0.337801;,
 -1.530412;-0.042820;-0.337801;,
 -1.530412;-0.042820;-0.337801;,
 -1.530412;0.042820;0.337801;,
 -1.530412;0.042820;0.337801;,
 -1.530412;0.042820;-0.337801;,
 -1.530412;0.042820;-0.337801;,
 1.530412;-0.042820;0.792960;,
 1.530412;-0.042820;0.792960;,
 1.530412;-0.042820;-0.792960;,
 1.530412;-0.042820;-0.792960;,
 1.530412;0.042820;0.792960;,
 1.530412;0.042820;0.792960;,
 1.530412;0.042820;-0.792960;,
 1.530412;0.042820;-0.792960;,
 1.530412;0.042820;-0.792960;,
 1.530412;0.042820;0.792960;,
 1.530412;-0.042820;-0.792960;,
 1.530412;-0.042820;0.792960;,
 -1.530412;0.042820;-0.337801;,
 -1.530412;0.042820;0.337801;,
 -1.530412;-0.042820;-0.337801;,
 -1.530412;-0.042820;0.337801;;

 6;
 4;5,7,3,1;,
 4;6,15,11,2;,
 4;14,13,9,10;,
 4;12,4,0,8;,
 4;23,22,18,19;,
 4;17,16,20,21;;

 MeshMaterialList {
  1;
  6;
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  24;
  -0.632009;-0.550968;0.544976;,
  -0.632009;-0.550968;0.544976;,
  -0.632009;-0.550968;-0.544976;,
  -0.632009;-0.550968;-0.544976;,
  -0.632009;0.550968;0.544976;,
  -0.632009;0.550968;0.544976;,
  -0.632009;0.550968;-0.544976;,
  -0.632009;0.550968;-0.544976;,
  0.518507;-0.607925;0.601313;,
  0.518507;-0.607925;0.601313;,
  0.518507;-0.607925;-0.601313;,
  0.518507;-0.607925;-0.601313;,
  0.518507;0.607925;0.601313;,
  0.518507;0.607925;0.601313;,
  0.518507;0.607925;-0.601313;,
  0.518507;0.607925;-0.601313;,
  0.518507;0.607925;-0.601313;,
  0.518507;0.607925;0.601313;,
  0.518507;-0.607925;-0.601313;,
  0.518507;-0.607925;0.601313;,
  -0.632009;0.550968;-0.544976;,
  -0.632009;0.550968;0.544976;,
  -0.632009;-0.550968;-0.544976;,
  -0.632009;-0.550968;0.544976;;

  6;
  4;5,7,3,1;,
  4;6,15,11,2;,
  4;14,13,9,10;,
  4;12,4,0,8;,
  4;23,22,18,19;,
  4;17,16,20,21;;
 }
 MeshTextureCoords { 
 24;
 0.021484;0.558594;,
 0.167969;0.560547;,
 0.021484;0.552734;,
 0.167969;0.541016;,
 0.023438;0.539063;,
 0.015625;0.562500;,
 0.021484;0.539063;,
 0.015625;0.539063;,
 0.162109;0.558594;,
 0.007813;0.535156;,
 0.011719;0.556641;,
 0.164063;0.552734;,
 0.164063;0.541016;,
 0.167969;0.535156;,
 0.164063;0.558594;,
 0.164063;0.535156;,
 0.169922;0.539063;,
 0.005859;0.539063;,
 0.005859;0.539063;,
 0.169922;0.539063;,
 0.123047;0.845703;,
 0.048828;0.845703;,
 0.048828;0.845703;,
 0.123047;0.845703;;
 }
}
}
}
}
Frame frm-sphere1_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000000,-1.070642,0.435487,1.000000;;
 }
Mesh sphere1_1 {
 43;
 1.676195;1.371462;-0.000000;,
 1.676195;1.371462;-0.000000;,
 0.967752;2.375441;-0.000000;,
 0.967752;2.375441;-0.000000;,
 0.967752;2.375441;-0.000000;,
 0.838097;1.371462;1.561379;,
 0.838097;1.371462;1.561379;,
 0.483876;2.375441;0.901463;,
 0.483876;2.375441;0.901463;,
 0.483876;2.375441;0.901463;,
 -0.838098;1.371462;1.561379;,
 -0.838098;1.371462;1.561379;,
 -0.483876;2.375441;0.901463;,
 -0.483876;2.375441;0.901463;,
 -0.483876;2.375441;0.901463;,
 -1.676195;1.371462;-0.000000;,
 -1.676195;1.371462;-0.000000;,
 -0.967752;2.375441;-0.000000;,
 -0.967752;2.375441;-0.000000;,
 -0.967752;2.375441;-0.000000;,
 -0.838097;1.371462;-1.561380;,
 -0.838097;1.371462;-1.561380;,
 -0.483876;2.375441;-0.901463;,
 -0.483876;2.375441;-0.901463;,
 -0.483876;2.375441;-0.901463;,
 0.838098;1.371462;-1.561379;,
 0.838098;1.371462;-1.561379;,
 0.483876;2.375441;-0.901463;,
 0.483876;2.375441;-0.901463;,
 0.483876;2.375441;-0.901463;,
 0.483876;2.375441;-0.901463;,
 0.838098;1.371462;-1.561379;,
 -0.483876;2.375441;-0.901463;,
 -0.838097;1.371462;-1.561380;,
 -0.967752;2.375441;-0.000000;,
 -1.676195;1.371462;-0.000000;,
 -0.483876;2.375441;0.901463;,
 -0.838098;1.371462;1.561379;,
 0.483876;2.375441;0.901463;,
 0.838097;1.371462;1.561379;,
 0.967752;2.375441;-0.000000;,
 1.676195;1.371462;-0.000000;,
 0.000000;2.742923;-0.000000;;

 13;
 3;42,4,29;,
 4;28,3,1,26;,
 3;42,27,24;,
 4;23,30,25,21;,
 4;2,9,6,0;,
 3;42,8,40;,
 3;42,22,19;,
 4;18,32,20,16;,
 3;42,17,14;,
 4;13,34,15,11;,
 4;7,12,10,5;,
 3;42,36,38;,
 6;37,35,33,31,41,39;;

 MeshMaterialList {
  1;
  13;
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
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  43;
  0.992091;-0.125523;0.000000;,
  0.992091;-0.125523;0.000000;,
  0.625443;0.780269;0.000000;,
  0.625443;0.780269;0.000000;,
  0.625443;0.780269;0.000000;,
  0.524496;-0.107520;0.844597;,
  0.524496;-0.107520;0.844597;,
  0.319136;0.796274;0.513906;,
  0.319136;0.796274;0.513906;,
  0.319136;0.796274;0.513906;,
  -0.524496;-0.107520;0.844597;,
  -0.524496;-0.107520;0.844597;,
  -0.319136;0.796274;0.513906;,
  -0.319136;0.796274;0.513906;,
  -0.319136;0.796274;0.513906;,
  -0.992091;-0.125523;-0.000000;,
  -0.992091;-0.125523;-0.000000;,
  -0.625443;0.780269;-0.000000;,
  -0.625443;0.780269;-0.000000;,
  -0.625443;0.780269;-0.000000;,
  -0.524496;-0.107520;-0.844597;,
  -0.524496;-0.107520;-0.844597;,
  -0.319136;0.796274;-0.513906;,
  -0.319136;0.796274;-0.513906;,
  -0.319136;0.796274;-0.513906;,
  0.524496;-0.107520;-0.844597;,
  0.524496;-0.107520;-0.844597;,
  0.319136;0.796274;-0.513906;,
  0.319136;0.796274;-0.513906;,
  0.319136;0.796274;-0.513906;,
  0.319136;0.796274;-0.513906;,
  0.524496;-0.107520;-0.844597;,
  -0.319136;0.796274;-0.513906;,
  -0.524496;-0.107520;-0.844597;,
  -0.625443;0.780269;-0.000000;,
  -0.992091;-0.125523;-0.000000;,
  -0.319136;0.796274;0.513906;,
  -0.524496;-0.107520;0.844597;,
  0.319136;0.796274;0.513906;,
  0.524496;-0.107520;0.844597;,
  0.625443;0.780269;0.000000;,
  0.992091;-0.125523;0.000000;,
  0.000000;1.000000;0.000000;;

  13;
  3;42,4,29;,
  4;28,3,1,26;,
  3;42,27,24;,
  4;23,30,25,21;,
  4;2,9,6,0;,
  3;42,8,40;,
  3;42,22,19;,
  4;18,32,20,16;,
  3;42,17,14;,
  4;13,34,15,11;,
  4;7,12,10,5;,
  3;42,36,38;,
  6;37,35,33,31,41,39;;
 }
 MeshTextureCoords { 
 43;
 0.434311;0.801967;,
 0.198058;0.498069;,
 0.196845;0.699984;,
 0.196845;0.699984;,
 0.973407;0.843750;,
 0.196845;0.699984;,
 0.434458;0.436745;,
 0.434311;0.801967;,
 0.973407;0.843750;,
 0.198058;0.498069;,
 0.198058;0.498069;,
 0.434311;0.801967;,
 0.434458;0.436745;,
 0.196845;0.699984;,
 0.974008;0.969117;,
 0.434458;0.436745;,
 0.729232;0.626186;,
 0.973407;0.843750;,
 0.735239;0.448464;,
 0.974008;0.969117;,
 0.480048;0.631625;,
 0.434311;0.801967;,
 0.973407;0.843750;,
 0.196845;0.699984;,
 0.974008;0.969117;,
 0.434458;0.436745;,
 0.434458;0.436745;,
 0.973407;0.843750;,
 0.434311;0.801967;,
 0.974008;0.969117;,
 0.198058;0.498069;,
 0.370560;0.693115;,
 0.485167;0.457054;,
 0.270065;0.693115;,
 0.198058;0.498069;,
 0.219818;0.601562;,
 0.973407;0.843750;,
 0.270065;0.510010;,
 0.974008;0.969117;,
 0.370560;0.510010;,
 0.974008;0.969117;,
 0.420807;0.601562;,
 0.650391;0.902344;;
 }
}
Frame frm-cyl2_1 {
  FrameTransformMatrix {
0.307700,0.951483,0.000000,0.000000,
0.951483,-0.307700,0.000000,0.000000,
0.000000,-0.000000,-1.000000,0.000000,
0.142070,1.837958,-2.095346,1.000000;;
 }
Mesh cyl2_1 {
 27;
 0.101857;-0.087046;1.862676;,
 -0.066375;-0.209274;1.862676;,
 -0.066375;-0.209274;1.862676;,
 0.270089;-0.209274;1.862676;,
 0.205830;-0.407043;1.862676;,
 -0.002116;-0.407043;1.862676;,
 -0.002116;-0.407043;1.862676;,
 -0.002116;-0.407043;1.862676;,
 0.205830;-0.407043;1.862676;,
 0.270089;-0.209274;1.862676;,
 -0.066375;-0.209274;1.862676;,
 0.101857;-0.087046;1.862676;,
 -0.078652;-0.512385;0.476004;,
 0.393927;-0.169036;0.476004;,
 0.282366;-0.512385;0.476004;,
 -0.190213;-0.169036;0.476004;,
 0.101857;0.043165;0.476004;,
 0.214365;-0.418789;0.136541;,
 0.214365;-0.418789;-1.080708;,
 -0.010651;-0.418789;0.136541;,
 -0.010651;-0.418789;-0.941451;,
 -0.080185;-0.204787;0.136541;,
 -0.080185;-0.204787;-0.852848;,
 0.101857;-0.072526;0.136541;,
 0.101857;-0.072526;-0.940768;,
 0.283898;-0.204787;0.136541;,
 0.283898;-0.204787;-1.080631;;

 16;
 4;15,12,6,2;,
 4;26,24,23,25;,
 5;4,3,0,1,5;,
 4;24,22,21,23;,
 4;22,20,19,21;,
 4;20,18,17,19;,
 4;18,26,25,17;,
 4;23,21,15,16;,
 4;17,25,13,14;,
 4;19,17,14,12;,
 4;21,19,12,15;,
 4;25,23,16,13;,
 4;16,15,10,11;,
 4;13,16,11,9;,
 4;14,13,9,8;,
 4;12,14,8,7;;

 MeshMaterialList {
  1;
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
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  27;
  -0.000000;0.813953;0.580931;,
  -0.774115;0.251525;0.580931;,
  -0.774115;0.251525;0.580931;,
  0.774115;0.251525;0.580931;,
  0.478430;-0.658501;0.580931;,
  -0.478429;-0.658502;0.580931;,
  -0.478429;-0.658502;0.580931;,
  -0.478429;-0.658502;0.580931;,
  0.478430;-0.658501;0.580931;,
  0.774115;0.251525;0.580931;,
  -0.774115;0.251525;0.580931;,
  -0.000000;0.813953;0.580931;,
  -0.583954;-0.803745;-0.113979;,
  0.944859;0.307004;-0.113979;,
  0.583955;-0.803744;-0.113979;,
  -0.944859;0.307003;-0.113979;,
  -0.000000;0.993483;-0.113979;,
  0.579730;-0.797929;-0.164989;,
  0.587786;-0.809017;-0.000000;,
  -0.579730;-0.797930;-0.164989;,
  -0.587785;-0.809017;-0.000000;,
  -0.938023;0.304782;-0.164989;,
  -0.951057;0.309017;0.000000;,
  -0.000000;0.986295;-0.164989;,
  -0.000000;1.000000;0.000000;,
  0.938023;0.304783;-0.164989;,
  0.951056;0.309018;0.000000;;

  16;
  4;15,12,6,2;,
  4;26,24,23,25;,
  5;4,3,0,1,5;,
  4;24,22,21,23;,
  4;22,20,19,21;,
  4;20,18,17,19;,
  4;18,26,25,17;,
  4;23,21,15,16;,
  4;17,25,13,14;,
  4;19,17,14,12;,
  4;21,19,12,15;,
  4;25,23,16,13;,
  4;16,15,10,11;,
  4;13,16,11,9;,
  4;14,13,9,8;,
  4;12,14,8,7;;
 }
 MeshTextureCoords { 
 27;
 0.930210;0.892418;,
 0.906246;0.920541;,
 0.009107;0.952773;,
 0.909212;0.866284;,
 0.873600;0.882701;,
 0.868496;0.904123;,
 0.009170;0.947232;,
 0.009170;0.947232;,
 0.009373;0.929299;,
 0.009437;0.923758;,
 0.009107;0.952773;,
 0.009272;0.938266;,
 0.181125;0.954221;,
 0.181588;0.913468;,
 0.181479;0.923088;,
 0.181015;0.963841;,
 0.181302;0.938654;,
 0.223526;0.929047;,
 0.530529;0.921708;,
 0.223305;0.948452;,
 0.529825;0.980068;,
 0.223237;0.954448;,
 0.529747;0.986064;,
 0.223415;0.938750;,
 0.529850;0.970366;,
 0.223594;0.923051;,
 0.530588;0.915712;;
 }
}
}
}
Frame frm-cube46_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.672257,-0.482116,-1.767280,1.000000;;
 }
Frame frm-cube45_1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.974127,0.226000,0.000000,
0.000000,-0.226000,0.974127,0.000000,
-0.672257,-2.400707,0.040227,1.000000;;
 }
Mesh cube45_1 {
 36;
 -1.268200;-3.290000;0.052516;,
 -1.268200;-3.290000;0.052516;,
 -1.268200;-3.290000;0.052516;,
 -2.032372;3.290000;0.052516;,
 -2.032372;3.290000;0.052516;,
 -2.032372;3.290000;0.052516;,
 1.268200;-3.290000;0.052516;,
 1.268200;-3.290000;0.052516;,
 1.268200;-3.290000;0.052516;,
 2.032372;3.290000;0.052516;,
 2.032372;3.290000;0.052516;,
 2.032372;3.290000;0.052516;,
 1.823286;-2.467500;1.107264;,
 1.823286;-2.467500;1.107264;,
 2.921933;2.467500;1.107264;,
 2.921933;2.467500;1.107264;,
 -1.823286;-2.467500;1.107264;,
 -1.823286;-2.467500;1.107264;,
 -2.921933;2.467500;1.107264;,
 -2.921933;2.467500;1.107264;,
 -2.921933;2.467500;1.107264;,
 -1.823286;-2.467500;1.107264;,
 -2.921933;2.467500;1.002232;,
 -1.823286;-2.467500;1.002232;,
 2.921933;2.467500;1.002232;,
 1.823286;-2.467500;1.002232;,
 2.921933;2.467500;1.107264;,
 1.823286;-2.467500;1.107264;,
 2.032372;3.290000;-0.052516;,
 2.032372;3.290000;0.052516;,
 1.268200;-3.290000;-0.052516;,
 1.268200;-3.290000;0.052516;,
 -2.032372;3.290000;-0.052516;,
 -2.032372;3.290000;0.052516;,
 -1.268200;-3.290000;-0.052516;,
 -1.268200;-3.290000;0.052516;;

 14;
 4;19,22,23,17;,
 4;32,28,30,34;,
 4;24,15,13,25;,
 4;11,5,2,8;,
 4;1,34,30,7;,
 4;10,28,32,4;,
 4;12,14,9,6;,
 4;25,27,31,30;,
 4;26,24,28,29;,
 4;24,25,30,28;,
 4;23,22,32,34;,
 4;16,23,34,0;,
 4;18,21,35,3;,
 4;22,20,33,32;;

 MeshMaterialList {
  2;
  14;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "utl205.ppm";
 }
 }
}
 MeshNormals {
  36;
  -0.111267;-0.702844;0.702588;,
  -0.111267;-0.702844;0.702588;,
  -0.111267;-0.702844;0.702588;,
  0.258487;0.718872;0.645296;,
  0.258487;0.718872;0.645296;,
  0.258487;0.718872;0.645296;,
  0.111267;-0.702844;0.702588;,
  0.111267;-0.702844;0.702588;,
  0.111267;-0.702844;0.702588;,
  -0.011215;0.783876;0.620817;,
  -0.011215;0.783876;0.620817;,
  -0.011215;0.783876;0.620817;,
  0.774669;-0.472253;0.420553;,
  0.774669;-0.472253;0.420553;,
  0.698606;0.541776;0.467363;,
  0.698606;0.541776;0.467363;,
  -0.774669;-0.472253;0.420553;,
  -0.774669;-0.472253;0.420553;,
  -0.056886;0.655655;0.752915;,
  -0.056886;0.655655;0.752915;,
  -0.056886;0.655655;0.752915;,
  -0.774669;-0.472253;0.420553;,
  -0.959228;0.142752;-0.243934;,
  -0.925724;-0.294425;-0.237377;,
  0.959228;0.142752;-0.243934;,
  0.925724;-0.294425;-0.237377;,
  0.698606;0.541776;0.467363;,
  0.774669;-0.472253;0.420553;,
  0.570985;0.605714;-0.554154;,
  -0.011215;0.783876;0.620817;,
  0.664040;-0.497248;-0.558387;,
  0.111267;-0.702844;0.702588;,
  -0.570985;0.605714;-0.554154;,
  0.258487;0.718872;0.645296;,
  -0.664040;-0.497248;-0.558387;,
  -0.111267;-0.702844;0.702588;;

  14;
  4;19,22,23,17;,
  4;32,28,30,34;,
  4;24,15,13,25;,
  4;11,5,2,8;,
  4;1,34,30,7;,
  4;10,28,32,4;,
  4;12,14,9,6;,
  4;25,27,31,30;,
  4;26,24,28,29;,
  4;24,25,30,28;,
  4;23,22,32,34;,
  4;16,23,34,0;,
  4;18,21,35,3;,
  4;22,20,33,32;;
 }
 MeshTextureCoords { 
 36;
 0.535345;0.337152;,
 0.535345;0.337152;,
 0.974798;0.729730;,
 0.481107;0.455382;,
 0.005682;0.400326;,
 0.480291;0.753842;,
 0.433309;0.802912;,
 0.533836;0.142649;,
 0.977195;0.459055;,
 0.201981;0.695218;,
 0.003262;0.088622;,
 0.477872;0.453857;,
 0.430978;0.440153;,
 0.467240;0.100654;,
 0.203103;0.507030;,
 0.068998;0.019835;,
 0.469411;0.380291;,
 0.469411;0.380291;,
 0.477872;0.629638;,
 0.072476;0.467971;,
 0.072476;0.467971;,
 0.975242;0.638743;,
 0.072476;0.467971;,
 0.469411;0.380291;,
 0.068998;0.019835;,
 0.467240;0.100654;,
 0.068998;0.019835;,
 0.467240;0.100654;,
 0.003262;0.088622;,
 0.003262;0.088622;,
 0.533836;0.142649;,
 0.533836;0.142649;,
 0.005682;0.400326;,
 0.005682;0.400326;,
 0.535345;0.337152;,
 0.975053;0.454170;;
 }
}
}
}
}
}
AnimationSet {
 Animation anim-root_2 {
  {frm-root_2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, 0.282149;;,
  100; 3; 0.000000, 0.000000, 0.282149;;;
  }
 }
 Animation anim-cube38_1 {
  {frm-cube38_1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 2.449645, -0.593652;;,
  100; 3; 0.000000, 2.449645, -0.593652;;;
  }
 }
 Animation anim-cube37_1 {
  {frm-cube37_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.000000, 0.707107, 0.707107;;,
  100; 4; 0.000000, 0.000000, 0.707107, 0.707107;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.699529, -2.269271, -0.629066;;,
  100; 3; -0.699529, -2.269271, -0.629066;;;
  }
 }
 Animation anim-cube43_1 {
  {frm-cube43_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.632159, 0.316820, -0.632159, -0.316820;;,
  100; 4; 0.632159, 0.316820, -0.632159, -0.316820;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.217025, 0.508511, -3.819906;;,
  100; 3; -0.217025, 0.508511, -3.819906;;;
  }
 }
 Animation anim-cube44_1 {
  {frm-cube44_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.967919, -0.251261, 0.000000, 0.000000;;,
  100; 4; 0.967919, -0.251261, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 1.907278, 0.000000, 0.000001;;,
  100; 3; 1.907278, 0.000000, 0.000001;;;
  }
 }
 Animation anim-cube32_1 {
  {frm-cube32_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.464650, -0.533010, -0.533010, -0.464650;;,
  100; 4; 0.464650, -0.533010, -0.533010, -0.464650;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.286362, 1.321647, -0.028494;;,
  100; 3; -0.286362, 1.321647, -0.028494;;;
  }
 }
 Animation anim-cube33_1 {
  {frm-cube33_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.967919, -0.251261, 0.000000, 0.000000;;,
  100; 4; 0.967919, -0.251261, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 1.907278, -0.000001, -0.000000;;,
  100; 3; 1.907278, -0.000001, -0.000000;;;
  }
 }
 Animation anim-sphere1_1 {
  {frm-sphere1_1}
  AnimationKey {
  2;
  2;
  1; 3; -0.000000, -1.070642, 0.435487;;,
  100; 3; -0.000000, -1.070642, 0.435487;;;
  }
 }
 Animation anim-cyl2_1 {
  {frm-cyl2_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 0.808610, 0.588345, -0.000000;;,
  100; 4; 0.000000, 0.808610, 0.588345, -0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.142070, 1.837958, -2.095346;;,
  100; 3; 0.142070, 1.837958, -2.095346;;;
  }
 }
 Animation anim-cube46_1 {
  {frm-cube46_1}
  AnimationKey {
  2;
  2;
  1; 3; 0.672257, -0.482116, -1.767280;;,
  100; 3; 0.672257, -0.482116, -1.767280;;;
  }
 }
 Animation anim-cube45_1 {
  {frm-cube45_1}
  AnimationKey {
  0;
  2;
  1; 4; 0.993511, 0.113738, 0.000000, 0.000000;;,
  100; 4; 0.993511, 0.113738, 0.000000, 0.000000;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.672257, -2.400707, 0.040227;;,
  100; 3; -0.672257, -2.400707, 0.040227;;;
  }
 }
}
