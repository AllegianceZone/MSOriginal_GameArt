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

Frame frm-turret1 {
  FrameTransformMatrix {
3.440571,0.000000,0.000000,0.000000,
0.000000,3.440571,0.000000,0.000000,
0.000000,0.000000,3.440571,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh turret1 {
 59;
 0.295848;0.309945;-0.150754;,
 0.295848;0.309945;-0.150754;,
 0.295848;0.309945;-0.150754;,
 0.295848;0.309945;-0.150754;,
 0.295848;0.309945;-0.150754;,
 0.439252;-0.000005;0.500479;,
 0.439252;-0.000005;0.500479;,
 0.260669;0.349743;0.303447;,
 0.260669;0.349743;0.303447;,
 0.260669;0.349743;0.303447;,
 0.260669;0.349743;0.303447;,
 -0.439252;-0.000005;0.500479;,
 -0.439252;-0.000005;0.500479;,
 -0.439252;-0.000005;0.500479;,
 0.253903;-0.000005;-0.749017;,
 0.253903;-0.000005;-0.749017;,
 0.172005;0.273031;-0.434598;,
 0.172005;0.273031;-0.434598;,
 0.368410;0.136513;0.538064;,
 0.368410;0.136513;0.538064;,
 0.368410;0.136513;0.538064;,
 0.368410;0.136513;0.538064;,
 0.368410;0.136513;0.538064;,
 0.368410;0.136513;0.538064;,
 -0.368410;0.136513;0.538064;,
 -0.368410;0.136513;0.538064;,
 -0.368410;0.136513;0.538064;,
 -0.368410;0.136513;0.538064;,
 -0.368410;0.136513;0.538064;,
 0.219962;0.302726;0.743919;,
 0.219962;0.302726;0.743919;,
 0.219962;0.302726;0.743919;,
 0.219962;0.302726;0.743919;,
 -0.219962;0.302726;0.743919;,
 0.309464;0.166208;0.755825;,
 0.309464;0.166208;0.755825;,
 0.309464;0.166208;0.755825;,
 -0.309465;0.166208;0.755825;,
 -0.309465;0.166208;0.755825;,
 -0.309465;0.166208;0.755825;,
 -0.309465;0.166208;0.755825;,
 0.309464;0.166208;0.755825;,
 -0.219962;0.302726;0.743919;,
 0.219962;0.302726;0.743919;,
 -0.368410;0.136513;0.538064;,
 0.368410;0.136513;0.538064;,
 0.172005;0.273031;-0.434598;,
 0.253903;-0.000005;-0.749017;,
 -0.172005;0.273031;-0.434599;,
 -0.253903;-0.000005;-0.749017;,
 -0.295848;0.309945;-0.150754;,
 -0.436713;-0.000005;-0.269759;,
 -0.260669;0.349743;0.303447;,
 -0.439252;-0.000005;0.500479;,
 0.260669;0.349743;0.303447;,
 0.439252;-0.000005;0.500479;,
 0.295848;0.309945;-0.150754;,
 0.436713;-0.000005;-0.269759;,
 0.000000;0.393609;-0.074184;;

 30;
 3;58,4,17;,
 3;3,57,15;,
 3;16,2,14;,
 3;48,49,51;,
 3;50,48,51;,
 3;6,57,1;,
 3;58,10,0;,
 3;58,48,50;,
 3;58,46,48;,
 3;58,50,52;,
 3;32,33,39;,
 3;36,31,38;,
 3;58,52,9;,
 3;46,47,49;,
 3;48,46,49;,
 3;28,52,50;,
 3;13,27,50;,
 3;12,5,23;,
 3;26,11,22;,
 3;56,8,21;,
 3;30,7,52;,
 3;42,29,52;,
 3;42,52,25;,
 3;37,42,24;,
 3;35,20,54;,
 3;43,34,54;,
 3;40,44,19;,
 3;41,40,18;,
 3;50,51,53;,
 3;56,45,55;;

 MeshMaterialList {
  3;
  30;
  0,
  1,
  1,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  2,
  2,
  0,
  0,
  0,
  0,
  0,
  2,
  2,
  1,
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2,
  0,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  59;
  0.748234;0.656630;-0.094780;,
  0.748234;0.656630;-0.094780;,
  0.748234;0.656630;-0.094780;,
  0.748234;0.656630;-0.094780;,
  0.748234;0.656630;-0.094780;,
  0.842040;0.282977;0.459230;,
  0.842040;0.282977;0.459230;,
  0.496943;0.864653;0.073644;,
  0.496943;0.864653;0.073644;,
  0.496943;0.864653;0.073644;,
  0.496943;0.864653;0.073644;,
  -0.673615;0.127070;0.728077;,
  -0.673615;0.127070;0.728077;,
  -0.673615;0.127070;0.728077;,
  0.467022;0.706967;-0.531120;,
  0.467022;0.706967;-0.531120;,
  0.298969;0.859396;-0.414796;,
  0.298969;0.859396;-0.414796;,
  0.707948;-0.278788;0.648912;,
  0.707948;-0.278788;0.648912;,
  0.707948;-0.278788;0.648912;,
  0.707948;-0.278788;0.648912;,
  0.707948;-0.278788;0.648912;,
  0.707948;-0.278788;0.648912;,
  -0.914902;0.192789;0.354663;,
  -0.914902;0.192789;0.354663;,
  -0.914902;0.192789;0.354663;,
  -0.914902;0.192789;0.354663;,
  -0.914902;0.192789;0.354663;,
  0.392442;0.686921;0.611660;,
  0.392442;0.686921;0.611660;,
  0.392442;0.686921;0.611660;,
  0.392442;0.686921;0.611660;,
  -0.460894;0.780866;0.421693;,
  0.754064;0.098477;0.649376;,
  0.754064;0.098477;0.649376;,
  0.754064;0.098477;0.649376;,
  -0.289194;-0.441787;0.849230;,
  -0.289194;-0.441787;0.849230;,
  -0.289194;-0.441787;0.849230;,
  -0.289194;-0.441787;0.849230;,
  0.754064;0.098477;0.649376;,
  -0.460894;0.780866;0.421693;,
  0.392442;0.686921;0.611660;,
  -0.914902;0.192789;0.354663;,
  0.707948;-0.278788;0.648912;,
  0.298969;0.859396;-0.414796;,
  0.467022;0.706967;-0.531120;,
  -0.298968;0.859396;-0.414797;,
  -0.467021;0.706967;-0.531120;,
  -0.748234;0.656630;-0.094780;,
  -0.859328;0.484610;-0.163429;,
  -0.496943;0.864653;0.073644;,
  -0.673615;0.127070;0.728077;,
  0.496943;0.864653;0.073644;,
  0.842040;0.282977;0.459230;,
  0.748234;0.656630;-0.094780;,
  0.859328;0.484610;-0.163429;,
  0.000000;0.991317;-0.131496;;

  30;
  3;58,4,17;,
  3;3,57,15;,
  3;16,2,14;,
  3;48,49,51;,
  3;50,48,51;,
  3;6,57,1;,
  3;58,10,0;,
  3;58,48,50;,
  3;58,46,48;,
  3;58,50,52;,
  3;32,33,39;,
  3;36,31,38;,
  3;58,52,9;,
  3;46,47,49;,
  3;48,46,49;,
  3;28,52,50;,
  3;13,27,50;,
  3;12,5,23;,
  3;26,11,22;,
  3;56,8,21;,
  3;30,7,52;,
  3;42,29,52;,
  3;42,52,25;,
  3;37,42,24;,
  3;35,20,54;,
  3;43,34,54;,
  3;40,44,19;,
  3;41,40,18;,
  3;50,51,53;,
  3;56,45,55;;
 }
 MeshTextureCoords { 
 59;
 0.562500;0.054688;,
 0.563430;0.386905;,
 0.563430;0.386905;,
 0.563430;0.386905;,
 0.562500;0.054688;,
 0.031250;0.820313;,
 0.218750;0.523438;,
 0.304688;0.078125;,
 0.304688;0.357143;,
 0.304688;0.078125;,
 0.304688;0.078125;,
 0.031250;0.476563;,
 0.031250;0.476563;,
 0.218750;0.523438;,
 0.937500;0.421875;,
 0.937500;0.421875;,
 0.739994;0.317229;,
 0.742188;0.117188;,
 0.109375;0.789063;,
 0.109375;0.789063;,
 0.187500;0.453125;,
 0.187500;0.453125;,
 0.109375;0.789063;,
 0.109375;0.789063;,
 0.187500;0.453125;,
 0.187500;0.453125;,
 0.109375;0.500000;,
 0.187500;0.453125;,
 0.187500;0.453125;,
 0.062500;0.085938;,
 0.062500;0.085938;,
 0.265625;0.734375;,
 0.265625;0.734375;,
 0.265625;0.562500;,
 0.039063;0.414063;,
 0.039063;0.414063;,
 0.203125;0.765625;,
 0.039063;0.414063;,
 0.203125;0.523438;,
 0.203125;0.523438;,
 0.203125;0.523438;,
 0.203125;0.765625;,
 0.062500;0.335938;,
 0.059152;0.351563;,
 0.109375;0.500000;,
 0.187500;0.453125;,
 0.742188;0.117188;,
 0.937500;0.007813;,
 0.742188;0.312500;,
 0.937500;0.421875;,
 0.562500;0.375000;,
 0.648438;0.515625;,
 0.304688;0.351563;,
 0.218750;0.523438;,
 0.304688;0.357143;,
 0.218750;0.523438;,
 0.563430;0.386905;,
 0.648438;0.515625;,
 0.523438;0.218750;;
 }
}
Frame frm-lwingzz {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.294071,0.234060,0.604279,1.000000;;
 }
Mesh lwingzz {
 26;
 0.242429;-0.020502;0.089099;,
 0.242429;-0.020502;0.089099;,
 0.242429;-0.020502;0.089099;,
 0.242429;-0.020502;-0.089099;,
 0.242429;-0.020502;-0.089099;,
 0.242429;-0.020502;-0.089099;,
 0.242429;0.020502;0.089099;,
 0.242429;0.020502;0.089099;,
 0.242429;0.020502;0.089099;,
 0.242429;0.020502;-0.089099;,
 0.242429;0.020502;-0.089099;,
 0.242429;0.020502;-0.089099;,
 -0.053202;-0.045625;0.118501;,
 -0.018572;-0.045625;-0.118501;,
 -0.018572;-0.045625;-0.118501;,
 -0.053202;0.045625;0.118501;,
 -0.053202;0.045625;0.118501;,
 -0.018572;0.045625;-0.118501;,
 -0.018572;0.045625;-0.118501;,
 -0.053202;0.045625;0.118501;,
 -0.018572;-0.045625;-0.118501;,
 -0.053202;-0.045625;0.118501;,
 0.242429;0.020502;-0.089099;,
 0.242429;0.020502;0.089099;,
 0.242429;-0.020502;-0.089099;,
 0.242429;-0.020502;0.089099;;

 10;
 3;5,11,8;,
 3;2,4,7;,
 3;14,17,10;,
 3;3,13,9;,
 3;22,18,16;,
 3;6,22,15;,
 3;1,23,19;,
 3;12,0,19;,
 3;20,24,25;,
 3;21,20,25;;

 MeshMaterialList {
  5;
  10;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3,
  4,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  26;
  0.438902;-0.633601;0.637115;,
  0.438902;-0.633601;0.637115;,
  0.438902;-0.633601;0.637115;,
  0.843388;-0.380254;-0.379610;,
  0.843388;-0.380254;-0.379610;,
  0.843388;-0.380254;-0.379610;,
  0.840402;0.383480;0.382973;,
  0.840402;0.383480;0.382973;,
  0.840402;0.383480;0.382973;,
  0.447411;0.635293;-0.629465;,
  0.447411;0.635293;-0.629465;,
  0.447411;0.635293;-0.629465;,
  0.129376;-0.697157;0.705148;,
  0.143125;-0.702787;-0.696855;,
  0.143125;-0.702787;-0.696855;,
  0.132214;0.698787;0.703005;,
  0.132214;0.698787;0.703005;,
  0.146041;0.704997;-0.694011;,
  0.146041;0.704997;-0.694011;,
  0.132214;0.698787;0.703005;,
  0.143125;-0.702787;-0.696855;,
  0.129376;-0.697157;0.705148;,
  0.447411;0.635293;-0.629465;,
  0.840402;0.383480;0.382973;,
  0.843388;-0.380254;-0.379610;,
  0.438902;-0.633601;0.637115;;

  10;
  3;5,11,8;,
  3;2,4,7;,
  3;14,17,10;,
  3;3,13,9;,
  3;22,18,16;,
  3;6,22,15;,
  3;1,23,19;,
  3;12,0,19;,
  3;20,24,25;,
  3;21,20,25;;
 }
 MeshTextureCoords { 
 26;
 0.601563;0.554688;,
 0.601563;0.554688;,
 0.601563;0.554688;,
 0.601563;0.554688;,
 0.781250;0.554688;,
 0.781250;0.554688;,
 0.820313;0.828125;,
 0.601563;0.601563;,
 0.601563;0.601563;,
 0.601563;0.601563;,
 0.601563;0.601563;,
 0.781250;0.601563;,
 0.335938;0.531250;,
 0.335938;0.531250;,
 0.335938;0.531250;,
 0.796875;0.593750;,
 0.796875;0.593750;,
 0.335938;0.625000;,
 0.976563;0.625000;,
 0.335938;0.625000;,
 0.976563;0.625000;,
 0.796875;0.593750;,
 0.960938;0.828125;,
 0.601563;0.601563;,
 0.960938;0.828125;,
 0.820313;0.828125;;
 }
}
}
Frame frm-rwingzz {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.294071,0.234060,0.604278,1.000000;;
 }
Mesh rwingzz {
 26;
 -0.242429;-0.020502;0.089099;,
 -0.242429;-0.020502;0.089099;,
 -0.242429;-0.020502;0.089099;,
 -0.242429;-0.020502;-0.089099;,
 -0.242429;-0.020502;-0.089099;,
 -0.242429;-0.020502;-0.089099;,
 -0.242429;0.020502;0.089099;,
 -0.242429;0.020502;0.089099;,
 -0.242429;0.020502;0.089099;,
 -0.242429;0.020502;-0.089099;,
 -0.242429;0.020502;-0.089099;,
 -0.242429;0.020502;-0.089099;,
 0.053202;-0.045625;0.118501;,
 0.018572;-0.045625;-0.118501;,
 0.018572;-0.045625;-0.118501;,
 0.053202;0.045625;0.118501;,
 0.053202;0.045625;0.118501;,
 0.018572;0.045625;-0.118501;,
 0.018572;0.045625;-0.118501;,
 0.053202;0.045625;0.118501;,
 0.018572;-0.045625;-0.118501;,
 0.053202;-0.045625;0.118501;,
 -0.242429;0.020502;-0.089099;,
 -0.242429;0.020502;0.089099;,
 -0.242429;-0.020502;-0.089099;,
 -0.242429;-0.020502;0.089099;;

 10;
 3;8,11,5;,
 3;7,4,2;,
 3;10,17,14;,
 3;9,13,3;,
 3;16,18,22;,
 3;15,22,6;,
 3;19,23,1;,
 3;19,0,12;,
 3;25,24,20;,
 3;25,20,21;;

 MeshMaterialList {
  5;
  10;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3,
  4,
  4;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  26;
  -0.438902;-0.633601;0.637115;,
  -0.438902;-0.633601;0.637115;,
  -0.438902;-0.633601;0.637115;,
  -0.843388;-0.380254;-0.379610;,
  -0.843388;-0.380254;-0.379610;,
  -0.843388;-0.380254;-0.379610;,
  -0.840402;0.383480;0.382973;,
  -0.840402;0.383480;0.382973;,
  -0.840402;0.383480;0.382973;,
  -0.447411;0.635293;-0.629465;,
  -0.447411;0.635293;-0.629465;,
  -0.447411;0.635293;-0.629465;,
  -0.129376;-0.697157;0.705148;,
  -0.143125;-0.702787;-0.696855;,
  -0.143125;-0.702787;-0.696855;,
  -0.132214;0.698787;0.703005;,
  -0.132214;0.698787;0.703005;,
  -0.146041;0.704997;-0.694011;,
  -0.146041;0.704997;-0.694011;,
  -0.132214;0.698787;0.703005;,
  -0.143125;-0.702787;-0.696855;,
  -0.129376;-0.697157;0.705148;,
  -0.447411;0.635293;-0.629465;,
  -0.840402;0.383480;0.382973;,
  -0.843388;-0.380254;-0.379610;,
  -0.438902;-0.633601;0.637115;;

  10;
  3;8,11,5;,
  3;7,4,2;,
  3;10,17,14;,
  3;9,13,3;,
  3;16,18,22;,
  3;15,22,6;,
  3;19,23,1;,
  3;19,0,12;,
  3;25,24,20;,
  3;25,20,21;;
 }
 MeshTextureCoords { 
 26;
 0.601563;0.601563;,
 0.601563;0.601563;,
 0.601563;0.601563;,
 0.601563;0.601563;,
 0.781250;0.601563;,
 0.781250;0.601563;,
 0.820313;0.828125;,
 0.601563;0.554688;,
 0.601563;0.554688;,
 0.601563;0.554688;,
 0.601563;0.554688;,
 0.781250;0.554688;,
 0.335938;0.625000;,
 0.335938;0.625000;,
 0.335938;0.625000;,
 0.796875;0.593750;,
 0.796875;0.593750;,
 0.335938;0.531250;,
 0.976563;0.625000;,
 0.335938;0.531250;,
 0.976563;0.625000;,
 0.796875;0.593750;,
 0.960938;0.828125;,
 0.601563;0.554688;,
 0.960938;0.828125;,
 0.820313;0.828125;;
 }
}
}
Frame frm-lwepbas {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.477080,0.090216,-0.018135,1.000000;;
 }
Mesh lwepbas {
 43;
 0.073257;-0.065814;0.377808;,
 0.073257;-0.065814;0.377808;,
 0.073257;-0.065814;0.377808;,
 0.218444;-0.084377;0.297369;,
 0.218444;-0.084377;0.297369;,
 0.218444;-0.084377;0.297369;,
 0.218444;-0.084377;-0.154855;,
 0.218444;-0.084377;-0.154855;,
 0.218444;-0.084377;-0.154855;,
 -0.137418;-0.091968;-0.153343;,
 -0.137418;-0.091968;-0.153343;,
 -0.137418;-0.091968;-0.153343;,
 -0.137418;-0.053486;0.377808;,
 -0.137418;-0.053486;0.377808;,
 0.073257;0.066619;0.377808;,
 0.073257;0.066619;0.377808;,
 0.073257;0.066619;0.377808;,
 -0.137418;0.093093;-0.153343;,
 -0.137418;0.093093;-0.153343;,
 -0.137418;0.093093;-0.153343;,
 -0.137418;0.093093;-0.153343;,
 -0.137418;0.093093;-0.153343;,
 -0.137418;0.054140;0.377808;,
 -0.137418;0.054140;0.377808;,
 -0.137418;0.054140;0.377808;,
 -0.137418;0.054140;0.377808;,
 -0.137418;-0.091968;0.297539;,
 -0.137418;-0.091968;0.297539;,
 -0.137418;-0.091968;0.297539;,
 -0.137418;-0.091968;0.297539;,
 -0.137418;0.093093;0.297539;,
 -0.137418;0.093093;0.297539;,
 -0.137418;-0.091968;0.297539;,
 -0.137418;0.054140;0.377808;,
 -0.137418;0.093093;-0.153343;,
 0.218444;0.085409;-0.154855;,
 0.218444;0.085409;0.297369;,
 0.073257;0.066619;0.377808;,
 -0.137418;-0.053486;0.377808;,
 -0.137418;-0.091968;-0.153343;,
 0.218444;-0.084377;-0.154855;,
 0.218444;-0.084377;0.297369;,
 0.073257;-0.065814;0.377808;;

 20;
 3;2,16,25;,
 3;13,1,24;,
 3;5,36,15;,
 3;0,4,14;,
 3;8,35,36;,
 3;3,7,36;,
 3;42,12,29;,
 3;41,42,28;,
 3;23,30,21;,
 3;38,22,20;,
 3;27,38,19;,
 3;11,26,18;,
 3;10,6,41;,
 3;32,9,41;,
 3;31,33,37;,
 3;35,17,31;,
 3;36,35,31;,
 3;35,40,39;,
 3;34,35,39;,
 3;37,36,31;;

 MeshMaterialList {
  4;
  20;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2,
  2,
  2,
  1,
  1,
  3,
  3,
  3,
  0,
  0,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  43;
  0.112890;-0.453665;0.883993;,
  0.112890;-0.453665;0.883993;,
  0.112890;-0.453665;0.883993;,
  0.491551;-0.722381;0.486358;,
  0.491551;-0.722381;0.486358;,
  0.491551;-0.722381;0.486358;,
  0.818833;-0.405858;-0.405947;,
  0.818833;-0.405858;-0.405947;,
  0.818833;-0.405858;-0.405947;,
  -0.323191;-0.669086;-0.669232;,
  -0.323191;-0.669086;-0.669232;,
  -0.323191;-0.669086;-0.669232;,
  -0.771767;-0.338559;0.538288;,
  -0.771767;-0.338559;0.538288;,
  0.234658;0.455278;0.858870;,
  0.234658;0.455278;0.858870;,
  0.234658;0.455278;0.858870;,
  -0.942365;0.236562;-0.236615;,
  -0.942365;0.236562;-0.236615;,
  -0.942365;0.236562;-0.236615;,
  -0.942365;0.236562;-0.236615;,
  -0.942365;0.236562;-0.236615;,
  -0.620288;0.271408;0.735921;,
  -0.620288;0.271408;0.735921;,
  -0.620288;0.271408;0.735921;,
  -0.620288;0.271408;0.735921;,
  -0.556779;-0.807459;0.194953;,
  -0.556779;-0.807459;0.194953;,
  -0.556779;-0.807459;0.194953;,
  -0.556779;-0.807459;0.194953;,
  -0.239997;0.955252;0.172900;,
  -0.239997;0.955252;0.172900;,
  -0.556779;-0.807459;0.194953;,
  -0.620288;0.271408;0.735921;,
  -0.942365;0.236562;-0.236615;,
  0.343584;0.663985;-0.664134;,
  0.741594;0.581481;0.334541;,
  0.234658;0.455278;0.858870;,
  -0.771767;-0.338559;0.538288;,
  -0.323191;-0.669086;-0.669232;,
  0.818833;-0.405858;-0.405947;,
  0.491551;-0.722381;0.486358;,
  0.112890;-0.453665;0.883993;;

  20;
  3;2,16,25;,
  3;13,1,24;,
  3;5,36,15;,
  3;0,4,14;,
  3;8,35,36;,
  3;3,7,36;,
  3;42,12,29;,
  3;41,42,28;,
  3;23,30,21;,
  3;38,22,20;,
  3;27,38,19;,
  3;11,26,18;,
  3;10,6,41;,
  3;32,9,41;,
  3;31,33,37;,
  3;35,17,31;,
  3;36,35,31;,
  3;35,40,39;,
  3;34,35,39;,
  3;37,36,31;;
 }
 MeshTextureCoords { 
 43;
 0.390625;0.960938;,
 0.390625;0.960938;,
 0.390625;0.960938;,
 0.484375;0.984375;,
 0.484375;0.984375;,
 0.484375;0.984375;,
 0.765625;0.859375;,
 0.765625;0.984375;,
 0.765625;0.984375;,
 0.796875;0.632813;,
 0.796875;0.632813;,
 0.000000;0.000000;,
 0.429688;0.632813;,
 0.234375;0.960938;,
 0.390625;0.867188;,
 0.390625;0.867188;,
 0.390625;0.867188;,
 0.796875;0.632813;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.234375;0.867188;,
 0.234375;0.867188;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.484375;0.632813;,
 0.484375;0.632813;,
 0.000000;0.000000;,
 0.484375;0.632813;,
 0.484375;0.632813;,
 0.429688;0.632813;,
 0.960938;0.859375;,
 0.765625;0.859375;,
 0.484375;0.859375;,
 0.429688;0.773438;,
 0.000000;0.000000;,
 0.960938;0.984375;,
 0.765625;0.984375;,
 0.484375;0.859375;,
 0.429688;0.773438;;
 }
}
}
Frame frm-rwepbas {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.477080,0.090216,-0.018135,1.000000;;
 }
Mesh rwepbas {
 43;
 -0.073257;-0.065814;0.377808;,
 -0.073257;-0.065814;0.377808;,
 -0.073257;-0.065814;0.377808;,
 -0.218444;-0.084377;0.297369;,
 -0.218444;-0.084377;0.297369;,
 -0.218444;-0.084377;0.297369;,
 -0.218444;-0.084377;-0.154855;,
 -0.218444;-0.084377;-0.154855;,
 -0.218444;-0.084377;-0.154855;,
 0.137418;-0.091968;-0.153343;,
 0.137418;-0.091968;-0.153343;,
 0.137418;-0.091968;-0.153343;,
 0.137418;-0.053486;0.377808;,
 0.137418;-0.053486;0.377808;,
 -0.073257;0.066619;0.377808;,
 -0.073257;0.066619;0.377808;,
 -0.073257;0.066619;0.377808;,
 0.137418;0.093093;-0.153342;,
 0.137418;0.093093;-0.153342;,
 0.137418;0.093093;-0.153342;,
 0.137418;0.093093;-0.153342;,
 0.137418;0.093093;-0.153342;,
 0.137418;0.054140;0.377808;,
 0.137418;0.054140;0.377808;,
 0.137418;0.054140;0.377808;,
 0.137418;0.054140;0.377808;,
 0.137418;-0.091968;0.297539;,
 0.137418;-0.091968;0.297539;,
 0.137418;-0.091968;0.297539;,
 0.137418;-0.091968;0.297539;,
 0.137418;0.093093;0.297539;,
 0.137418;0.093093;0.297539;,
 0.137418;-0.091968;0.297539;,
 0.137418;0.054140;0.377808;,
 0.137418;0.093093;-0.153342;,
 -0.218444;0.085409;-0.154855;,
 -0.218444;0.085409;0.297369;,
 -0.073257;0.066619;0.377808;,
 0.137418;-0.053486;0.377808;,
 0.137418;-0.091968;-0.153343;,
 -0.218444;-0.084377;-0.154855;,
 -0.218444;-0.084377;0.297369;,
 -0.073257;-0.065814;0.377808;;

 20;
 3;25,16,2;,
 3;24,1,13;,
 3;15,36,5;,
 3;14,4,0;,
 3;36,35,8;,
 3;36,7,3;,
 3;29,12,42;,
 3;28,42,41;,
 3;21,30,23;,
 3;20,22,38;,
 3;19,38,27;,
 3;18,26,11;,
 3;41,6,10;,
 3;41,9,32;,
 3;37,33,31;,
 3;31,17,35;,
 3;31,35,36;,
 3;39,40,35;,
 3;39,35,34;,
 3;31,36,37;;

 MeshMaterialList {
  4;
  20;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  2,
  2,
  2,
  2,
  1,
  1,
  3,
  3,
  3,
  0,
  0,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  43;
  -0.112890;-0.453665;0.883993;,
  -0.112890;-0.453665;0.883993;,
  -0.112890;-0.453665;0.883993;,
  -0.491551;-0.722381;0.486358;,
  -0.491551;-0.722381;0.486358;,
  -0.491551;-0.722381;0.486358;,
  -0.818833;-0.405858;-0.405947;,
  -0.818833;-0.405858;-0.405947;,
  -0.818833;-0.405858;-0.405947;,
  0.323191;-0.669086;-0.669232;,
  0.323191;-0.669086;-0.669232;,
  0.323191;-0.669086;-0.669232;,
  0.771767;-0.338559;0.538288;,
  0.771767;-0.338559;0.538288;,
  -0.234658;0.455278;0.858870;,
  -0.234658;0.455278;0.858870;,
  -0.234658;0.455278;0.858870;,
  0.942365;0.236562;-0.236615;,
  0.942365;0.236562;-0.236615;,
  0.942365;0.236562;-0.236615;,
  0.942365;0.236562;-0.236615;,
  0.942365;0.236562;-0.236615;,
  0.620288;0.271408;0.735921;,
  0.620288;0.271408;0.735921;,
  0.620288;0.271408;0.735921;,
  0.620288;0.271408;0.735921;,
  0.556779;-0.807459;0.194953;,
  0.556779;-0.807459;0.194953;,
  0.556779;-0.807459;0.194953;,
  0.556779;-0.807459;0.194953;,
  0.239996;0.955252;0.172900;,
  0.239996;0.955252;0.172900;,
  0.556779;-0.807459;0.194953;,
  0.620288;0.271408;0.735921;,
  0.942365;0.236562;-0.236615;,
  -0.343584;0.663985;-0.664134;,
  -0.741594;0.581481;0.334541;,
  -0.234658;0.455278;0.858870;,
  0.771767;-0.338559;0.538288;,
  0.323191;-0.669086;-0.669232;,
  -0.818833;-0.405858;-0.405947;,
  -0.491551;-0.722381;0.486358;,
  -0.112890;-0.453665;0.883993;;

  20;
  3;25,16,2;,
  3;24,1,13;,
  3;15,36,5;,
  3;14,4,0;,
  3;36,35,8;,
  3;36,7,3;,
  3;29,12,42;,
  3;28,42,41;,
  3;21,30,23;,
  3;20,22,38;,
  3;19,38,27;,
  3;18,26,11;,
  3;41,6,10;,
  3;41,9,32;,
  3;37,33,31;,
  3;31,17,35;,
  3;31,35,36;,
  3;39,40,35;,
  3;39,35,34;,
  3;31,36,37;;
 }
 MeshTextureCoords { 
 43;
 0.390625;0.960938;,
 0.390625;0.960938;,
 0.390625;0.960938;,
 0.484375;0.984375;,
 0.484375;0.984375;,
 0.484375;0.984375;,
 0.765625;0.859375;,
 0.765625;0.984375;,
 0.765625;0.984375;,
 0.796875;0.632813;,
 0.796875;0.632813;,
 0.000000;0.000000;,
 0.429688;0.632813;,
 0.234375;0.960938;,
 0.390625;0.867188;,
 0.390625;0.867188;,
 0.390625;0.867188;,
 0.796875;0.632813;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.234375;0.867188;,
 0.234375;0.867188;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.484375;0.632813;,
 0.484375;0.632813;,
 0.000000;0.000000;,
 0.484375;0.632813;,
 0.484375;0.632813;,
 0.429688;0.632813;,
 0.960938;0.859375;,
 0.765625;0.859375;,
 0.484375;0.859375;,
 0.429688;0.773438;,
 0.000000;0.000000;,
 0.960938;0.984375;,
 0.765625;0.984375;,
 0.484375;0.859375;,
 0.429688;0.773438;;
 }
}
}
Frame frm-fuselg {
  FrameTransformMatrix {
0.290649,0.000000,0.000000,0.000000,
0.000000,0.290649,0.000000,0.000000,
0.000000,0.000000,0.290649,0.000000,
-0.000000,0.085112,0.000000,1.000000;;
 }
Mesh fuselg {
 38;
 -0.310012;-1.856830;-1.139548;,
 -0.310012;-1.856830;-1.139548;,
 0.873572;-0.292854;-2.577047;,
 0.394504;-0.957457;-1.164266;,
 0.394504;-0.957457;-1.164266;,
 0.394504;-0.957457;-1.164266;,
 0.394504;-0.957457;-1.164266;,
 -0.394503;-0.957457;-1.164266;,
 -0.394503;-0.957457;-1.164266;,
 -0.394503;-0.957457;-1.164266;,
 -0.394503;-0.957457;-1.164266;,
 -0.873572;-0.292854;-2.577047;,
 0.310013;-1.856830;-1.139548;,
 0.310013;-1.856830;-1.139548;,
 0.310013;-1.856830;-1.139548;,
 0.000000;-1.856830;-1.139548;,
 0.000000;-1.856830;-1.139548;,
 0.000000;-1.856830;-1.139548;,
 -0.000000;-0.292854;1.721933;,
 0.000000;-0.292854;-2.577047;,
 0.000000;-1.856830;-1.139548;,
 0.000000;-0.957457;-1.164266;,
 -1.502544;-0.292854;-0.928126;,
 1.502544;-0.292854;-0.928125;,
 0.310013;-1.856830;-1.139548;,
 -0.873572;-0.292854;-2.577047;,
 -0.394503;-0.957457;-1.164266;,
 0.683300;-0.893792;0.437588;,
 -0.683300;-0.893792;0.437588;,
 -1.511279;-0.292854;1.721933;,
 0.394504;-0.957457;-1.164266;,
 0.000000;-1.864945;-0.240907;,
 1.511279;-0.292854;1.721933;,
 -0.000000;-0.893792;0.437588;,
 0.873572;-0.292854;-2.577047;,
 -0.310012;-1.856830;-1.139548;,
 0.275621;-1.864945;-0.240907;,
 -0.275621;-1.864945;-0.240908;;

 20;
 3;28,10,1;,
 4;17,0,9,21;,
 3;6,2,23;,
 4;33,27,32,18;,
 3;35,37,28;,
 3;14,5,27;,
 3;36,13,27;,
 4;31,36,27,33;,
 4;19,34,4,21;,
 4;16,12,36,31;,
 3;22,11,8;,
 3;29,22,28;,
 3;32,27,23;,
 3;27,3,23;,
 3;22,7,28;,
 4;21,30,24,15;,
 4;31,37,35,20;,
 4;33,28,37,31;,
 4;21,26,25,19;,
 4;18,29,28,33;;

 MeshMaterialList {
  2;
  20;
  0,
  1,
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
  1,
  0,
  0,
  1,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  38;
  -0.708109;-0.565111;-0.423358;,
  -0.708109;-0.565111;-0.423358;,
  0.279841;-0.901793;-0.329330;,
  0.536863;-0.709992;-0.455729;,
  0.536863;-0.709992;-0.455729;,
  0.536863;-0.709992;-0.455729;,
  0.536863;-0.709992;-0.455729;,
  -0.536862;-0.709993;-0.455730;,
  -0.536862;-0.709993;-0.455730;,
  -0.536862;-0.709993;-0.455730;,
  -0.536862;-0.709993;-0.455730;,
  -0.279841;-0.901793;-0.329330;,
  0.708109;-0.565111;-0.423357;,
  0.708109;-0.565111;-0.423357;,
  0.708109;-0.565111;-0.423357;,
  0.000000;-0.713598;-0.700555;,
  0.000000;-0.713598;-0.700555;,
  0.000000;-0.713598;-0.700555;,
  -0.000000;-0.905757;0.423798;,
  0.000000;-0.904877;-0.425674;,
  0.000000;-0.713598;-0.700555;,
  0.000000;-0.547424;-0.836855;,
  -0.551445;-0.829426;-0.089226;,
  0.551445;-0.829426;-0.089225;,
  0.708109;-0.565111;-0.423357;,
  -0.279841;-0.901793;-0.329330;,
  -0.536862;-0.709993;-0.455730;,
  0.621976;-0.752913;0.215098;,
  -0.621976;-0.752913;0.215098;,
  -0.316757;-0.921009;0.226731;,
  0.536863;-0.709992;-0.455729;,
  -0.000000;-0.888847;0.458204;,
  0.316756;-0.921009;0.226731;,
  -0.000000;-0.765289;0.643687;,
  0.279841;-0.901793;-0.329330;,
  -0.708109;-0.565111;-0.423358;,
  0.358382;-0.856362;0.371761;,
  -0.358382;-0.856362;0.371761;;

  20;
  3;28,10,1;,
  4;17,0,9,21;,
  3;6,2,23;,
  4;33,27,32,18;,
  3;35,37,28;,
  3;14,5,27;,
  3;36,13,27;,
  4;31,36,27,33;,
  4;19,34,4,21;,
  4;16,12,36,31;,
  3;22,11,8;,
  3;29,22,28;,
  3;32,27,23;,
  3;27,3,23;,
  3;22,7,28;,
  4;21,30,24,15;,
  4;31,37,35,20;,
  4;33,28,37,31;,
  4;21,26,25,19;,
  4;18,29,28,33;;
 }
 MeshTextureCoords { 
 38;
 0.238114;0.746441;,
 0.322630;0.254244;,
 0.049466;0.104852;,
 0.319667;0.166808;,
 0.167969;0.582031;,
 0.319667;0.166808;,
 0.319667;0.166808;,
 0.317667;0.264680;,
 0.317667;0.264680;,
 0.165874;0.744861;,
 0.317667;0.264680;,
 0.045037;0.321576;,
 0.324202;0.177333;,
 0.324202;0.177333;,
 0.324202;0.177333;,
 0.238478;0.666970;,
 0.323416;0.215788;,
 0.238478;0.666970;,
 0.873148;0.220913;,
 0.054594;0.662949;,
 0.323416;0.215788;,
 0.166238;0.665391;,
 0.360225;0.402549;,
 0.367842;0.029785;,
 0.238841;0.587500;,
 0.050781;0.816406;,
 0.165874;0.744861;,
 0.628138;0.133853;,
 0.624674;0.303372;,
 0.869317;0.408378;,
 0.167969;0.582031;,
 0.496058;0.217398;,
 0.876978;0.033447;,
 0.626406;0.218612;,
 0.058594;0.503906;,
 0.322630;0.254244;,
 0.496756;0.183208;,
 0.495359;0.251587;;
 }
}
Frame frm-bfuselg1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000000,-1.226102,0.126751,1.000000;;
 }
Mesh bfuselg1 {
 12;
 0.421506;0.201595;0.730071;,
 0.383571;-0.201595;0.477859;,
 0.843013;0.201595;0.000000;,
 0.767142;-0.201595;-0.186505;,
 0.421507;0.201595;-0.730070;,
 0.383571;-0.201595;-0.850869;,
 -0.421506;0.201595;-0.730071;,
 -0.383571;-0.201595;-0.850870;,
 -0.843013;0.201595;-0.000000;,
 -0.767142;-0.201595;-0.186505;,
 -0.421507;0.201595;0.730070;,
 -0.383571;-0.201595;0.477859;;

 18;
 3;0,1,3;,
 3;2,0,3;,
 3;6,7,9;,
 3;8,6,9;,
 3;8,9,11;,
 3;10,8,11;,
 3;2,3,5;,
 3;4,2,5;,
 3;10,11,1;,
 3;0,10,1;,
 3;2,4,6;,
 3;9,7,5;,
 3;1,11,9;,
 3;10,0,2;,
 3;6,8,2;,
 3;2,8,10;,
 3;9,3,1;,
 3;5,3,9;;

 MeshMaterialList {
  1;
  18;
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
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  12;
  0.664079;-0.148304;0.732806;,
  0.195030;-0.829685;0.523055;,
  0.554051;0.824298;-0.116447;,
  0.675765;-0.727645;0.117791;,
  0.591134;0.730808;-0.341291;,
  0.632899;-0.682583;-0.365404;,
  -0.591134;0.730808;-0.341292;,
  -0.632899;-0.682583;-0.365404;,
  -0.870034;0.469086;0.151653;,
  -0.510843;-0.852943;-0.107367;,
  -0.344708;0.162854;0.924475;,
  -0.488438;-0.686238;0.538986;;

  18;
  3;0,1,3;,
  3;2,0,3;,
  3;6,7,9;,
  3;8,6,9;,
  3;8,9,11;,
  3;10,8,11;,
  3;2,3,5;,
  3;4,2,5;,
  3;10,11,1;,
  3;0,10,1;,
  3;2,4,6;,
  3;9,7,5;,
  3;1,11,9;,
  3;10,0,2;,
  3;6,8,2;,
  3;2,8,10;,
  3;9,3,1;,
  3;5,3,9;;
 }
 MeshTextureCoords { 
 12;
 0.441619;0.169169;,
 0.385303;0.188675;,
 0.269828;0.075320;,
 0.245562;0.165564;,
 0.131455;0.116848;,
 0.105658;0.165724;,
 0.123206;0.327746;,
 0.102891;0.272329;,
 0.276768;0.356491;,
 0.253049;0.295440;,
 0.438579;0.286317;,
 0.385140;0.266634;;
 }
}
}
Frame frm-bfuselg2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.073908,-0.561499,1.000000;;
 }
Mesh bfuselg2 {
 11;
 0.000000;-0.009152;-0.315046;,
 0.185710;-1.045738;-0.211982;,
 0.228424;-0.001683;0.025889;,
 -0.000000;-1.635597;0.047704;,
 0.000000;-1.077527;-0.055164;,
 -0.000000;-0.008926;0.363842;,
 0.000000;-1.013950;-0.368800;,
 -0.185710;-1.045738;-0.211982;,
 -0.228424;-0.001683;0.025889;,
 0.000000;-2.169665;-0.439813;,
 0.000000;-1.487908;-0.680871;;

 16;
 3;9,7,10;,
 3;7,4,5;,
 3;3,4,7;,
 3;9,3,7;,
 3;7,8,0;,
 3;6,7,0;,
 3;1,2,5;,
 3;4,1,5;,
 3;9,1,3;,
 3;1,6,0;,
 3;10,6,1;,
 3;9,10,1;,
 3;1,4,3;,
 3;7,6,10;,
 3;5,8,7;,
 3;0,2,1;;

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
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  11;
  0.000000;0.100913;-0.994895;,
  0.999983;-0.005815;-0.000132;,
  0.999188;-0.040175;-0.003087;,
  -0.000000;-0.100211;0.994966;,
  -0.000000;-0.092123;0.995748;,
  -0.000000;-0.327787;0.944752;,
  0.000000;0.315880;-0.948799;,
  -0.999983;-0.005815;-0.000133;,
  -0.999188;-0.040175;-0.003088;,
  0.000000;-0.980067;-0.198669;,
  0.000000;0.295158;-0.955448;;

  16;
  3;9,7,10;,
  3;7,4,5;,
  3;3,4,7;,
  3;9,3,7;,
  3;7,8,0;,
  3;6,7,0;,
  3;1,2,5;,
  3;4,1,5;,
  3;9,1,3;,
  3;1,6,0;,
  3;10,6,1;,
  3;9,10,1;,
  3;1,4,3;,
  3;7,6,10;,
  3;5,8,7;,
  3;0,2,1;;
 }
 MeshTextureCoords { 
 11;
 0.569188;0.667460;,
 0.764416;0.738595;,
 0.554231;0.760234;,
 0.867537;0.833961;,
 0.764310;0.782728;,
 0.542221;0.852803;,
 0.764523;0.694461;,
 0.764416;0.738595;,
 0.554231;0.760234;,
 0.989562;0.723009;,
 0.868032;0.628918;;
 }
}
Frame frm-bfusegl3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.383705,-0.285793,1.000000;;
 }
Mesh bfusegl3 {
 7;
 0.360148;-0.657118;-0.133200;,
 0.124998;0.003731;0.000759;,
 -0.000000;-0.544280;0.062953;,
 -0.360148;-0.657118;-0.133200;,
 -0.124998;0.003731;0.000759;,
 0.000000;-1.929286;-0.391080;,
 0.000000;-0.476802;-0.269928;;

 8;
 3;5,6,0;,
 3;3,2,4;,
 3;5,2,3;,
 3;6,3,4;,
 3;2,0,1;,
 3;5,0,2;,
 3;5,3,6;,
 3;0,6,1;;

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
 1.000000;1.000000;1.000000;1.000000;;
 50.000000;
 1.000000;1.000000;1.000000;;
 0.0; 0.0; 0.0;;
 TextureFilename {
  "acs65.ppm";
 }
 }
}
 MeshNormals {
  7;
  0.997702;0.066398;0.013459;,
  0.944230;0.322724;0.065419;,
  -0.000000;-0.166286;0.986078;,
  -0.997702;0.066398;0.013459;,
  -0.944230;0.322724;0.065418;,
  -0.000000;-0.980067;-0.198669;,
  0.000000;0.230835;-0.972993;;

  8;
  3;5,6,0;,
  3;3,2,4;,
  3;5,2,3;,
  3;6,3,4;,
  3;2,0,1;,
  3;5,0,2;,
  3;5,3,6;,
  3;0,6,1;;
 }
 MeshTextureCoords { 
 7;
 0.395025;0.666780;,
 0.417795;0.576875;,
 0.357031;0.573448;,
 0.395026;0.666780;,
 0.417795;0.576875;,
 0.351193;0.839852;,
 0.443121;0.720230;;
 }
}
}
}
}
}
AnimationSet {
 Animation anim-turret1 {
  {frm-turret1}
  AnimationKey {
  1;
  2;
  1; 3; 3.440571, 3.440571, 3.440571;;,
  60; 3; 3.440571, 3.440571, 3.440571;;;
  }
 }
 Animation anim-lwingzz {
  {frm-lwingzz}
  AnimationKey {
  2;
  2;
  1; 3; 0.294071, 0.234060, 0.604279;;,
  60; 3; 0.294071, 0.234060, 0.604279;;;
  }
 }
 Animation anim-rwingzz {
  {frm-rwingzz}
  AnimationKey {
  2;
  2;
  1; 3; -0.294071, 0.234060, 0.604278;;,
  60; 3; -0.294071, 0.234060, 0.604278;;;
  }
 }
 Animation anim-lwepbas {
  {frm-lwepbas}
  AnimationKey {
  2;
  2;
  1; 3; 0.477080, 0.090216, -0.018135;;,
  60; 3; 0.477080, 0.090216, -0.018135;;;
  }
 }
 Animation anim-rwepbas {
  {frm-rwepbas}
  AnimationKey {
  2;
  2;
  1; 3; -0.477080, 0.090216, -0.018135;;,
  60; 3; -0.477080, 0.090216, -0.018135;;;
  }
 }
 Animation anim-fuselg {
  {frm-fuselg}
  AnimationKey {
  1;
  2;
  1; 3; 0.290649, 0.290649, 0.290649;;,
  60; 3; 0.290649, 0.290649, 0.290649;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.000000, 0.085112, 0.000000;;,
  60; 3; -0.000000, 0.085112, 0.000000;;;
  }
 }
 Animation anim-bfuselg1 {
  {frm-bfuselg1}
  AnimationKey {
  2;
  2;
  1; 3; -0.000000, -1.226102, 0.126751;;,
  60; 3; -0.000000, -1.226102, 0.126751;;;
  }
 }
 Animation anim-bfuselg2 {
  {frm-bfuselg2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -1.073908, -0.561499;;,
  60; 3; 0.000000, -1.073908, -0.561499;;;
  }
 }
 Animation anim-bfusegl3 {
  {frm-bfusegl3}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -1.383705, -0.285793;;,
  60; 3; 0.000000, -1.383705, -0.285793;;;
  }
 }
}
