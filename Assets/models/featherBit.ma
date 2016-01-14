//Maya ASCII 2014 scene
//Name: featherBit.ma
//Last modified: Mon, May 04, 2015 11:32:57 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9";
createNode transform -n "polySurface1";
	setAttr ".rp" -type "double3" 2.8918346166610718 4.0241546630859375 -0.22544169425964355 ;
	setAttr ".sp" -type "double3" 2.8918346166610718 4.0241546630859375 -0.22544169425964355 ;
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:11]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 48 ".uvst[0].uvsp[0:47]" -type "float2" 0.5 0 1 0.5 0.5 1
		 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5
		 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5
		 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5 0 1 0.5 0.5 1 0 0.5 0.5
		 0 1 0.5 0.5 1 0 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".vt[0:47]"  0 -38.96809769 5.5511151e-17 0.70710677 0 5.5511151e-17
		 -0.70710677 0 -5.5511151e-17 0 38.96809769 -5.5511151e-17 0.90990925 -36.99366379 0.31876111
		 1.75409567 9.93137264 0.37977865 0.3398906 9.93550014 0.38244417 1.18407702 56.86053848 0.44346172
		 2.87104225 -43.27131271 0.6612798 3.046397209 -4.29719639 0.6612798 1.63231528 -4.31649208 0.6612798
		 1.80767024 34.65762711 0.6612798 -0.44943675 -23.39941406 -0.95968878 0.25767002 6.16987324 -0.95968878
		 -1.15654349 6.16987324 -0.95968878 -0.44943675 35.73916245 -0.95968878 3.19646406 -55.59527588 -0.12017093
		 3.44122601 4.02963686 -0.12017093 2.027054787 4.018670559 -0.12017093 2.27181673 63.64358521 -0.12017093
		 4.6278758 -40.32118225 0.27459908 4.80323076 -1.3470645 0.27459908 3.38914919 -1.36636019 0.27459908
		 3.56450415 37.60775757 0.27459908 1.87317967 -38.92564774 -0.76278907 2.5802865 0.042449176 -0.76278907
		 1.16607285 0.042449176 -0.76278907 1.87317967 39.010547638 -0.76278907 4.40297985 -41.55617142 -0.61088091
		 4.56785536 5.37620783 -0.61088091 3.15373611 5.35986853 -0.61088091 3.31861162 52.29224777 -0.61088091
		 5.72979546 -43.22886658 -0.19319056 5.90515041 -4.25474691 -0.19319056 4.49106884 -4.27404261 -0.19319056
		 4.6664238 34.70007324 -0.19319056 0.41524869 -32.75577545 -0.50770074 1.12235546 6.21232224 -0.50770074
		 -0.29185808 6.21232224 -0.50770074 0.41524869 45.18041992 -0.50770074 5.36789894 -34.90032196 -1.11216319
		 5.77281237 4.072085857 -1.11216319 4.35864115 4.061119556 -1.11216319 4.76355457 43.033531189 -1.11216319
		 6.64858961 -25.74648285 -0.90075582 6.94021273 4.7069478 -0.90075582 5.52613115 4.68765211 -0.90075582
		 5.81775427 35.14108276 -0.90075582;
	setAttr -s 48 ".ed[0:47]"  0 1 0 0 2 0 1 3 0 2 3 0 4 5 0 4 6 0 5 7 0
		 6 7 0 8 9 0 8 10 0 9 11 0 10 11 0 12 13 0 12 14 0 13 15 0 14 15 0 16 17 0 16 18 0
		 17 19 0 18 19 0 20 21 0 20 22 0 21 23 0 22 23 0 24 25 0 24 26 0 25 27 0 26 27 0 28 29 0
		 28 30 0 29 31 0 30 31 0 32 33 0 32 34 0 33 35 0 34 35 0 36 37 0 36 38 0 37 39 0 38 39 0
		 40 41 0 40 42 0 41 43 0 42 43 0 44 45 0 44 46 0 45 47 0 46 47 0;
	setAttr -s 12 -ch 48 ".fc[0:11]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 2 3
		f 4 4 6 -8 -6
		mu 0 4 4 5 6 7
		f 4 8 10 -12 -10
		mu 0 4 8 9 10 11
		f 4 12 14 -16 -14
		mu 0 4 12 13 14 15
		f 4 16 18 -20 -18
		mu 0 4 16 17 18 19
		f 4 20 22 -24 -22
		mu 0 4 20 21 22 23
		f 4 24 26 -28 -26
		mu 0 4 24 25 26 27
		f 4 28 30 -32 -30
		mu 0 4 28 29 30 31
		f 4 32 34 -36 -34
		mu 0 4 32 33 34 35
		f 4 36 38 -40 -38
		mu 0 4 36 37 38 39
		f 4 40 42 -44 -42
		mu 0 4 40 41 42 43
		f 4 44 46 -48 -46
		mu 0 4 44 45 46 47;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:11]";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :lightList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyNormal1.out" "polySurfaceShape1.i";
connectAttr "groupId1.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "polyNormal1.ip";
connectAttr "polySurfaceShape2.o" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
// End of featherBit.ma
