//Maya ASCII 2014 scene
//Name: simplePole.ma
//Last modified: Fri, May 08, 2015 03:25:05 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9";
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 0 0.0659642179575433 -1.4646998715571355e-17 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43319075507065974 0.73940043056291982 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 19 ".uvtk[0:18]" -type "float2" -0.013682146 0.004877232
		 -0.066809379 0.51668578 -0.11993667 0.004877232 0.22370544 0.004877232 -0.013682146
		 -0.0021511093 0.22370544 -0.0021511093 -0.11993667 -0.0021511093 -0.3573243 0.004877232
		 -0.3573243 -0.0021511093 -0.11993667 -0.012269178 -0.013682146 -0.012269178 0.35084274
		 -0.012269178 -0.013682146 -0.019992657 0.35084274 -0.019992657 -0.11993667 -0.019992657
		 -0.48446161 -0.012269178 -0.48446161 -0.019992657 -0.11993667 -0.03788498 -0.013682146
		 -0.03788498;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 2.2204460492503131e-16 1 0 0 -1 2.2204460492503131e-16 0
		 0 0.0659642179575433 -1.4646998715571355e-17 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 1.4901161193847656e-08 -0.73531469330191612 9.8978838121054902e-17 ;
	setAttr ".ps" -type "double2" 0.25460976362228394 1.64325100928545 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[0]" -type "float3" -0.016193788 -2.2383453e-17 0.41677037 ;
	setAttr ".tk[1]" -type "float3" 0 1.8621715e-18 0.001739846 ;
	setAttr ".tk[2]" -type "float3" 0 1.8621715e-18 0.001739846 ;
	setAttr ".tk[3]" -type "float3" 0 1.8621715e-18 0.001739846 ;
	setAttr ".tk[4]" -type "float3" 0 1.8621715e-18 0.001739846 ;
	setAttr ".tk[5]" -type "float3" 0 2.2330801e-18 0.0064652208 ;
	setAttr ".tk[6]" -type "float3" 0 2.2330801e-18 0.0064652208 ;
	setAttr ".tk[7]" -type "float3" 0 2.2330801e-18 0.0064652208 ;
	setAttr ".tk[8]" -type "float3" 0 2.2330801e-18 0.0064652208 ;
	setAttr ".tk[13]" -type "float3" 0 -1.4886991e-18 0.0044037299 ;
	setAttr ".tk[14]" -type "float3" 0 -1.4886991e-18 0.0044037299 ;
	setAttr ".tk[15]" -type "float3" 0 -1.4886991e-18 0.0044037299 ;
	setAttr ".tk[16]" -type "float3" 0 -1.4886991e-18 0.0044037299 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "vtx[0]";
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk[0:19]" -type "float3"  0.039361794 -1.4931439e-17
		 0.81724519 -0.039361794 -1.4931439e-17 0.81724519 0.078114614 2.6759812e-17 -0.17315546
		 0.039361794 2.6759809e-17 -0.17315546 -0.039361794 2.6759809e-17 -0.17315546 -0.078114614
		 2.6759812e-17 -0.17315546 0.078114614 2.6759812e-17 -0.0875955 0.039361794 2.6759809e-17
		 -0.0875955 -0.039361794 2.6759809e-17 -0.0875955 -0.078114614 2.6759812e-17 -0.0875955
		 0.039361794 -2.1893622e-18 0 0.039361794 -2.1893622e-18 0 -0.039361794 -2.1893622e-18
		 0 -0.039361794 -2.1893622e-18 0 0.039361794 -6.9237974e-18 0.083822004 0.039361794
		 -6.9237974e-18 0.083822004 -0.039361794 -6.9237974e-18 0.083822004 -0.039361794 -6.9237974e-18
		 0.083822004 0.039361794 -4.7340142e-18 0.14632009 -0.039361794 -4.7340142e-18 0.14632009;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 6 "f[0:12]" "f[14:20]" "f[24:30]" "f[32:38]" "f[42:48]" "f[50:80]";
createNode polyPlane -n "polyPlane1";
	setAttr ".sw" 9;
	setAttr ".sh" 9;
	setAttr ".cuv" 2;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
connectAttr "polyTweakUV1.out" "pPlaneShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "polyPlanarProj1.out" "polyTweakUV1.ip";
connectAttr "polyTweak2.out" "polyPlanarProj1.ip";
connectAttr "pPlaneShape1.wm" "polyPlanarProj1.mp";
connectAttr "deleteComponent2.og" "polyTweak2.ip";
connectAttr "polyTweak1.out" "deleteComponent2.ig";
connectAttr "deleteComponent1.og" "polyTweak1.ip";
connectAttr "polyPlane1.out" "deleteComponent1.ig";
connectAttr "pPlaneShape1.iog" ":initialShadingGroup.dsm" -na;
// End of simplePole.ma
