//Maya ASCII 2014 scene
//Name: babel_work.ma
//Last modified: Mon, Nov 23, 2015 01:21:12 PM
//Codeset: UTF-8
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201310090405-890429";
fileInfo "osv" "Mac OS X 10.9";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -92.616890584128868 37.352659845980128 218.3451518443195 ;
	setAttr ".r" -type "double3" 20.061647313689559 -385.39999999990931 -8.8022540096372341e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 280.35512618481044;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.3790701031684875 58.569398880004883 -1.6473732590675354 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.3790701031684875 427.79537366486159 -1.647373259067499 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.0762550705357605;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.4199313612135027 75.458508520968792 102.02991605301472 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 485.16117742683451;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "curve1";
	setAttr ".v" no;
createNode nurbsCurve -n "curveShape1" -p "curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0.50000000000000044 0 -2.5000000000000004
		1.0000000000000009 0 -1.0000000000000002
		2.5000000000000022 0 0.50000000000000011
		4.5000000000000036 0 1.0000000000000002
		;
createNode transform -n "inside";
	setAttr ".v" no;
createNode mesh -n "insideShape" -p "inside";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "outside";
	setAttr ".v" no;
createNode mesh -n "outsideShape" -p "outside";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "outside";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0 -1 0 0 0 1 0 2
		 0 3 0 4 3 -1 3 0 3 1 3 2 3 3 3 4;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".vt[0:11]"  0.30000001 0.51961523 -2.5 0.60000002 -7.4282897e-17 -2.5
		 0.30000001 -0.51961523 -2.5 -0.30000001 -0.51961523 -2.5 -0.60000002 -2.4403885e-16 -2.5
		 -0.30000001 0.51961523 -2.5 2.70000005 4.67653704 1 5.4000001 -6.6854611e-16 1 2.70000005 -4.67653704 1
		 -2.70000005 -4.67653704 1 -5.4000001 -2.1963497e-15 1 -2.70000005 4.67653704 1;
	setAttr -s 17 ".ed[0:16]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 1 7 1
		 7 6 0 6 0 1 2 8 1 8 7 0 3 9 1 9 8 0 10 9 0 5 11 1 11 10 0 6 11 0;
	setAttr -s 5 -ch 22 ".fc[0:4]" -type "polyFaces" 
		f 4 0 6 7 8
		mu 0 4 0 1 7 6
		f 4 1 9 10 -7
		mu 0 4 1 2 8 7
		f 4 2 11 12 -10
		mu 0 4 2 3 9 8
		f 6 4 14 15 13 -12 3
		mu 0 6 4 5 11 10 9 3
		f 4 5 -9 16 -15
		mu 0 4 5 0 6 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "yurt";
	setAttr ".v" no;
createNode mesh -n "yurtShape" -p "yurt";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr ".pt[0]" -type "float3" -0.22151637 -0.0051979492 0.22151637 ;
	setAttr ".pt[1]" -type "float3" 0.22151637 -0.0051979492 0.22151637 ;
	setAttr ".pt[2]" -type "float3" -0.22151637 -0.0051979492 -0.22151637 ;
	setAttr ".pt[3]" -type "float3" 0.22151637 -0.0051979492 -0.22151637 ;
	setAttr ".pt[4]" -type "float3" 0 -0.37982973 0.29904744 ;
	setAttr ".pt[5]" -type "float3" 0 -0.37982973 -0.29904744 ;
	setAttr ".pt[8]" -type "float3" -0.29904744 -0.37982973 0 ;
	setAttr ".pt[9]" -type "float3" 0.29904744 -0.37982973 0 ;
	setAttr ".dr" 1;
createNode transform -n "obelisk";
	setAttr ".v" no;
createNode mesh -n "obeliskShape" -p "obelisk";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.37499994 0.625 0.875 0.75 0 0.25000024 0.25
		 0.375 0 0.25000024 0.25 0.125 0 0.375 0.87500006 0.25000003 0 0.625 0.375 0.75 0.25
		 0.25000009 0.083333336;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[2]" -type "float3" -0.027941948 -0.026110636 0.063350506 ;
	setAttr ".pt[3]" -type "float3" -0.12462274 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.027941948 -0.026110636 -0.063350506 ;
	setAttr ".pt[5]" -type "float3" -0.12462274 0 0 ;
	setAttr ".pt[8]" -type "float3" 0 -0.086275153 0 ;
	setAttr ".pt[15]" -type "float3" 0.14535865 0 0 ;
	setAttr -s 16 ".vt[0:15]"  -1.86378968 0 1.12959516 1.044980764 0 0.94048321
		 -0.38469282 1.068840027 0.50547254 0.10649218 1.30413437 0.34292763 -0.38469282 1.068840027 -0.50547266
		 0.10649218 1.30413437 -0.34292775 -1.86378968 0 -1.12959516 1.044980764 0 -0.94048321
		 -0.6647917 1.32181644 1.9124064e-07 1.71047759 0 0 -2.388942 0 0.3111912 -2.34038544 0.46119964 6.3278549e-08
		 -2.388942 0 -0.3111912 -1.86378968 0 1.9635138e-07 0.17039564 1.42671037 -5.9604645e-08
		 -1.94675803 0.10402852 6.2088175e-09;
	setAttr -s 42 ".ed[0:41]"  6 11 0 10 11 0 11 12 0 10 12 0 6 12 0 3 8 0
		 2 3 0 6 8 0 4 6 0 3 14 0 5 8 0 4 8 0 1 3 0 1 9 0 1 2 0 0 1 0 0 2 0 2 8 0 0 8 0 8 11 0
		 4 5 0 5 7 0 5 14 0 3 9 0 5 9 0 9 13 0 7 9 0 4 7 0 12 13 0 0 11 0 6 13 1 10 13 0 0 10 0
		 7 13 0 6 7 0 0 13 1 1 13 0 8 14 0 9 14 0 10 15 0 11 15 0 12 15 0;
	setAttr -s 28 -ch 84 ".fc[0:27]" -type "polyFaces" 
		f 3 -1 4 -3
		mu 0 3 19 12 20
		f 3 5 -18 6
		mu 0 3 3 14 2
		f 3 0 -20 -8
		mu 0 3 12 19 17
		f 3 7 -12 8
		mu 0 3 12 17 13
		f 3 37 -23 10
		mu 0 3 14 23 5
		f 3 -11 -21 11
		mu 0 3 14 5 4
		f 3 -15 12 -7
		mu 0 3 2 1 3
		f 3 -24 -13 13
		mu 0 3 16 3 1
		f 3 14 -17 15
		mu 0 3 1 2 0
		f 3 -19 16 17
		mu 0 3 17 0 2
		f 3 -30 18 19
		mu 0 3 19 0 17
		f 3 -28 20 21
		mu 0 3 7 4 5
		f 3 -39 -25 22
		mu 0 3 24 16 11
		f 3 24 -27 -22
		mu 0 3 11 16 10
		f 3 25 -34 26
		mu 0 3 15 21 7
		f 3 27 -35 -9
		mu 0 3 4 7 6
		f 3 28 -32 3
		mu 0 3 20 22 18
		f 3 29 -2 -33
		mu 0 3 0 19 18
		f 3 -29 -5 30
		mu 0 3 22 20 12
		f 3 31 -36 32
		mu 0 3 18 22 0
		f 3 33 -31 34
		mu 0 3 7 21 6
		f 3 -37 -16 35
		mu 0 3 21 9 8
		f 3 -26 -14 36
		mu 0 3 21 15 9
		f 3 -38 -6 9
		mu 0 3 23 14 3
		f 3 38 -10 23
		mu 0 3 16 24 3
		f 3 1 40 -40
		mu 0 3 18 19 25
		f 3 2 41 -41
		mu 0 3 19 20 25
		f 3 -4 39 -42
		mu 0 3 20 18 25;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.63531649 0.765625
		 0.578125 0.70843351 0.5 0.6875 0.421875 0.70843351 0.36468354 0.765625 0.34375 0.84375
		 0.36468354 0.921875 0.421875 0.97906649 0.5 1 0.578125 0.97906649 0.63531649 0.921875
		 0.65625 0.84375 0.5 0.83749998 0.38710636 0.84201574 0.35421675 0.8828125 0.36542818
		 0.84288287 0.35421675 0.8046875 0.34898338 0.86328125 0.3545891 0.84331644 0.34898338
		 0.82421875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 6 ".pt";
	setAttr ".pt[13]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".pt[14]" -type "float3" 0 0 0.13890277 ;
	setAttr ".pt[15]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".pt[16]" -type "float3" 0 0 -0.13890277 ;
	setAttr ".pt[17]" -type "float3" 0 0 -0.44148234 ;
	setAttr ".pt[19]" -type "float3" 0 0 0.44148237 ;
	setAttr -s 20 ".vt[0:19]"  0.86602539 0 -0.5 0.5 0 -0.86602539 0 0 -1
		 -0.5 0 -0.86602539 -0.86602539 0 -0.5 0.74620032 0 0 -0.86602539 0 0.5 -0.5 0 0.86602539
		 0 0 1 0.5 0 0.86602539 0.86602539 0 0.5 1 0 0 0 1 0 -0.88759673 0.24731231 0 -0.87266558 0 -0.44893885
		 -0.88995415 0.1861634 0 -0.87266558 0 0.44893885 0.37280259 0 -0.4334293 0.36415833 0.41562229 -1.3871578e-08
		 0.37280259 0 0.43342936;
	setAttr -s 41 ".ed[0:40]"  0 1 0 1 2 0 2 3 0 3 4 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 4 14 0 16 6 0 14 17 0 5 19 0 17 5 0 19 16 0 1 12 1 2 12 1 3 12 1
		 8 12 1 9 12 1 10 12 1 11 12 1 0 12 1 4 12 1 4 13 0 6 12 1 12 13 1 7 12 1 14 15 0
		 13 15 1 15 16 0 6 13 0 14 18 0 15 18 1 5 18 1 17 18 0 16 18 0 18 19 0 4 15 0 6 15 0;
	setAttr -s 22 -ch 66 ".fc[0:21]" -type "polyFaces" 
		f 3 0 16 -24
		mu 0 3 10 9 12
		f 3 1 17 -17
		mu 0 3 9 8 12
		f 3 2 18 -18
		mu 0 3 8 7 12
		f 3 5 19 -29
		mu 0 3 3 2 12
		f 3 6 20 -20
		mu 0 3 2 1 12
		f 3 7 21 -21
		mu 0 3 1 0 12
		f 3 8 22 -22
		mu 0 3 0 11 12
		f 3 9 23 -23
		mu 0 3 11 10 12
		f 3 3 24 -19
		mu 0 3 7 6 12
		f 3 25 -28 -25
		mu 0 3 6 13 12
		f 3 -33 26 27
		mu 0 3 13 4 12
		f 3 4 28 -27
		mu 0 3 4 3 12
		f 3 39 -31 -26
		mu 0 3 6 15 13
		f 3 -41 32 30
		mu 0 3 15 4 13
		f 3 33 -35 -30
		mu 0 3 14 18 15
		f 3 -38 -32 34
		mu 0 3 18 16 15
		f 3 -37 14 35
		mu 0 3 18 17 5
		f 3 -39 -36 13
		mu 0 3 19 18 5
		f 3 -34 12 36
		mu 0 3 18 14 17
		f 3 37 38 15
		mu 0 3 16 18 19
		f 3 -40 10 29
		mu 0 3 15 6 14
		f 3 40 31 11
		mu 0 3 4 15 16;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1.3700000047683716 0 ;
	setAttr ".rp" -type "double3" 0 -1.3700000047683716 0 ;
	setAttr ".sp" -type "double3" 0 -1.3700000047683716 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 136 ".uvst[0].uvsp[0:135]" -type "float2" 1 0 1 0 1 0 1 0 1
		 0 1 0 0 0 0 0 1 1 0 0 0 0 1 1 0 0 0 0 0 0 1 1 0 0 1 1 0 0 0 0 0 0 0 0 1 1 0 0 1 1
		 1 0 1 1 1 1 1 0 1 1 0 0 1 1 1 0 1 1 0 0 1 0 1 1 1 1 1 1 0 0 1 1 1 0 1 1 1 1 1 0 1
		 1 0 0 0 0 1 1 1 0 1 1 1 1 0 1 1 1 1 1 0 1 1 1 1 1 0 1 1 0 0 0 1 0 0 0 0 0 1 0 1 1
		 0 0 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1
		 1 0 0 1 0 1 1 1 0 1 1 1 0 1 1 0 0 1 0 1 1 0 0 0 0 1 0 1 0 1 1 0 0 1 1 1 0 1 1 1 0
		 1 1 0 0 1 1 1 0 1 1 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1 0 0 0 1
		 0 0 0 1 0 0 0 0 1 0 0 1 0 0 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[17]" -type "float3" -0.080753669 0 -0.080753669 ;
	setAttr ".pt[20]" -type "float3" 0.080753669 0 0.0073274481 ;
	setAttr ".pt[22]" -type "float3" 0.74355346 0 0 ;
	setAttr ".pt[23]" -type "float3" -0.080753669 0 0.080753669 ;
	setAttr ".pt[24]" -type "float3" 0.080753669 0 -0.0073274481 ;
	setAttr ".pt[25]" -type "float3" -0.16995384 -0.26350802 0 ;
	setAttr ".pt[26]" -type "float3" -0.24620561 0 0 ;
	setAttr ".pt[27]" -type "float3" -0.24620561 0 0 ;
	setAttr ".pt[28]" -type "float3" 0.74355346 0 0 ;
	setAttr ".pt[29]" -type "float3" 0.74355346 0 0 ;
	setAttr ".pt[30]" -type "float3" 0.74355346 0 0 ;
	setAttr -s 31 ".vt[0:30]"  0 0.32648 0.39283711 0.39283711 0.32648 0
		 -0.39283711 0.32648 0 0 0.32648 -0.39283711 0.26516503 0.32629779 0.26516503 -0.26516503 0.32629779 -0.26516503
		 0 0 0.53033006 0.53033006 0 0 -0.26516503 0.32629779 0.26516503 0.26516503 0.32629779 -0.26516503
		 -0.53033006 0 0 0 0 -0.53033006 0.35355338 0 0.35355338 0 0.5 0 -0.35355338 0 -0.35355338
		 0.35355338 0 -0.35355338 -0.35355338 0 0.35355338 0.35355338 -1.37 0.35355338 0.53033006 -1.37 0
		 0 -1.37 0.53033006 -0.35355338 -1.37 -0.35355338 0 -1.37 -0.53033006 -0.53033006 -1.37 0
		 0.35355338 -1.37 -0.35355338 -0.35355338 -1.37 0.35355338 -0.53033006 -0.685 0 -0.44194174 -1.37 0.17677671
		 -0.44194174 -1.37 -0.17677671 -0.53033006 -1.027500033 0 -0.4861359 -1.37 0.088388339
		 -0.4861359 -1.37 -0.088388339;
	setAttr -s 74 ".ed[0:73]"  0 4 1 4 1 1 2 5 1 5 3 1 0 8 1 8 2 1 1 9 1
		 9 3 1 13 4 1 13 9 1 13 5 1 13 8 1 17 18 0 17 19 0 20 21 0 23 21 0 23 18 0 24 19 0
		 1 13 1 3 13 1 2 13 1 0 13 1 1 12 1 4 12 1 0 12 1 0 6 1 6 12 1 3 14 1 3 11 1 11 14 1
		 2 14 1 5 14 1 3 15 1 9 15 1 1 15 1 1 7 1 7 15 1 0 16 1 8 16 1 2 16 1 7 12 1 12 17 0
		 6 19 0 11 21 0 11 15 1 15 23 0 7 18 0 6 16 1 6 17 0 7 23 0 7 17 0 11 23 0 26 24 0
		 11 20 0 2 10 1 10 16 1 10 14 1 14 20 0 16 24 0 10 24 0 6 24 0 10 20 0 20 27 0 25 26 0
		 10 25 0 25 28 0 22 29 0 25 27 0 27 30 0 22 28 0 29 26 0 30 22 0 28 30 0 28 29 0;
	setAttr -s 44 -ch 136 ".fc[0:43]" -type "polyFaces" 
		f 3 1 18 8
		mu 0 3 63 64 65
		f 3 -19 6 -10
		mu 0 3 66 67 68
		f 3 7 19 9
		mu 0 3 14 69 70
		f 3 -20 -4 -11
		mu 0 3 71 72 73
		f 3 -3 20 10
		mu 0 3 74 75 76
		f 3 -21 -6 -12
		mu 0 3 77 78 79
		f 3 -5 21 11
		mu 0 3 16 80 81
		f 3 -22 0 -9
		mu 0 3 7 82 83
		f 3 -36 22 -41
		mu 0 3 84 85 86
		f 3 -23 -2 23
		mu 0 3 87 88 89
		f 3 -1 24 -24
		mu 0 3 12 90 91
		f 3 -25 25 26
		mu 0 3 6 92 93
		f 3 3 27 -32
		mu 0 3 94 95 96
		f 3 -28 28 29
		mu 0 3 97 3 17
		f 3 -31 2 31
		mu 0 3 98 99 15
		f 3 -29 32 -45
		mu 0 3 19 100 101
		f 3 -33 -8 33
		mu 0 3 102 4 103
		f 3 -7 34 -34
		mu 0 3 20 104 105
		f 3 -35 35 36
		mu 0 3 9 1 11
		f 3 -26 37 -48
		mu 0 3 13 106 107
		f 3 -38 4 38
		mu 0 3 108 0 109
		f 3 5 39 -39
		mu 0 3 21 110 111
		f 3 -51 40 41
		mu 0 3 112 113 24
		f 3 48 -42 -27
		mu 0 3 114 115 27
		f 3 -52 44 45
		mu 0 3 116 117 40
		f 3 49 -46 -37
		mu 0 3 118 119 43
		f 3 -49 42 -14
		mu 0 3 30 28 29
		f 3 -50 46 -17
		mu 0 3 46 44 45
		f 3 50 12 -47
		mu 0 3 23 25 26
		f 3 51 15 -44
		mu 0 3 39 41 42
		f 3 53 -58 -30
		mu 0 3 120 121 31
		f 3 -54 43 -15
		mu 0 3 34 32 33
		f 3 -55 30 -57
		mu 0 3 18 2 8
		f 3 -40 54 55
		mu 0 3 10 5 22
		f 3 -62 56 57
		mu 0 3 122 123 36
		f 3 -61 47 58
		mu 0 3 124 125 48
		f 3 59 -59 -56
		mu 0 3 126 127 51
		f 3 60 17 -43
		mu 0 3 47 49 50
		f 4 63 52 -60 64
		mu 0 4 128 129 54 52
		f 4 -65 61 62 -68
		mu 0 4 130 35 37 131
		f 4 73 70 -64 65
		mu 0 4 132 133 56 55
		f 4 -73 -66 67 68
		mu 0 4 134 135 57 58
		f 3 72 71 69
		mu 0 3 62 61 38
		f 3 -74 -70 66
		mu 0 3 60 59 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.5 0 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "locator2";
createNode locator -n "locatorShape2" -p "locator2";
	setAttr -k off ".v";
createNode transform -n "locator1" -p "locator2";
createNode locator -n "locatorShape1" -p "locator1";
	setAttr -k off ".v";
createNode transform -n "curve2" -p "locator1";
createNode nurbsCurve -n "curveShape2" -p "curve2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 1 0 no 3
		2 0 1
		2
		0 0 -0.5
		0 0 0.5
		;
createNode geometryVarGroup -n "snapshot1Group";
	setAttr ".mc" 100;
	setAttr -s 100 ".l";
createNode transform -n "transform1_1" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape1" -p "transform1_1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_2" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape2" -p "transform1_2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_3" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape3" -p "transform1_3";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_4" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape4" -p "transform1_4";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_5" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape5" -p "transform1_5";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_6" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape6" -p "transform1_6";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_7" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape7" -p "transform1_7";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_8" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape8" -p "transform1_8";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_9" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape9" -p "transform1_9";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_10" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape10" -p "transform1_10";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_11" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape11" -p "transform1_11";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_12" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape12" -p "transform1_12";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_13" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape13" -p "transform1_13";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_14" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape14" -p "transform1_14";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_15" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape15" -p "transform1_15";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_16" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape16" -p "transform1_16";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_17" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape17" -p "transform1_17";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_18" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape18" -p "transform1_18";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_19" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape19" -p "transform1_19";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_20" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape20" -p "transform1_20";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_21" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape21" -p "transform1_21";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_22" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape22" -p "transform1_22";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_23" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape23" -p "transform1_23";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_24" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape24" -p "transform1_24";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_25" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape25" -p "transform1_25";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_26" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape26" -p "transform1_26";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_27" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape27" -p "transform1_27";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_28" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape28" -p "transform1_28";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_29" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape29" -p "transform1_29";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_30" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape30" -p "transform1_30";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_31" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape31" -p "transform1_31";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_32" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape32" -p "transform1_32";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_33" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape33" -p "transform1_33";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_34" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape34" -p "transform1_34";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_35" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape35" -p "transform1_35";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_36" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape36" -p "transform1_36";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_37" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape37" -p "transform1_37";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_38" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape38" -p "transform1_38";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_39" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape39" -p "transform1_39";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_40" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape40" -p "transform1_40";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_41" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape41" -p "transform1_41";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_42" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape42" -p "transform1_42";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_43" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape43" -p "transform1_43";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_44" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape44" -p "transform1_44";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_45" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape45" -p "transform1_45";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_46" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape46" -p "transform1_46";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_47" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape47" -p "transform1_47";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_48" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape48" -p "transform1_48";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_49" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape49" -p "transform1_49";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_50" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape50" -p "transform1_50";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_51" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape51" -p "transform1_51";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_52" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape52" -p "transform1_52";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_53" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape53" -p "transform1_53";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_54" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape54" -p "transform1_54";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_55" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape55" -p "transform1_55";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_56" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape56" -p "transform1_56";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_57" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape57" -p "transform1_57";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_58" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape58" -p "transform1_58";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_59" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape59" -p "transform1_59";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_60" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape60" -p "transform1_60";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_61" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape61" -p "transform1_61";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_62" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape62" -p "transform1_62";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_63" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape63" -p "transform1_63";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_64" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape64" -p "transform1_64";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_65" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape65" -p "transform1_65";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_66" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape66" -p "transform1_66";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_67" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape67" -p "transform1_67";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_68" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape68" -p "transform1_68";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_69" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape69" -p "transform1_69";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_70" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape70" -p "transform1_70";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_71" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape71" -p "transform1_71";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_72" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape72" -p "transform1_72";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_73" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape73" -p "transform1_73";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_74" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape74" -p "transform1_74";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_75" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape75" -p "transform1_75";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_76" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape76" -p "transform1_76";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_77" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape77" -p "transform1_77";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_78" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape78" -p "transform1_78";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_79" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape79" -p "transform1_79";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_80" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape80" -p "transform1_80";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_81" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape81" -p "transform1_81";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_82" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape82" -p "transform1_82";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_83" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape83" -p "transform1_83";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_84" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape84" -p "transform1_84";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_85" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape85" -p "transform1_85";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_86" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape86" -p "transform1_86";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_87" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape87" -p "transform1_87";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_88" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape88" -p "transform1_88";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_89" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape89" -p "transform1_89";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_90" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape90" -p "transform1_90";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_91" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape91" -p "transform1_91";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_92" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape92" -p "transform1_92";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_93" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape93" -p "transform1_93";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_94" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape94" -p "transform1_94";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_95" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape95" -p "transform1_95";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_96" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape96" -p "transform1_96";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_97" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape97" -p "transform1_97";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_98" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape98" -p "transform1_98";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_99" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape99" -p "transform1_99";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "transform1_100" -p "snapshot1Group";
createNode nurbsCurve -n "transform1_Shape100" -p "transform1_100";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "loftedSurface1";
createNode nurbsSurface -n "loftedSurfaceShape1" -p "loftedSurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "nurbsToPoly1";
	setAttr ".v" no;
createNode mesh -n "nurbsToPolyShape1" -p "nurbsToPoly1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 92 ".pt";
	setAttr ".pt[0]" -type "float3" -2.9765069e-06 -0.30258667 -2.3841858e-07 ;
	setAttr ".pt[1]" -type "float3" -2.9765069e-06 -0.30258667 -2.3841858e-07 ;
	setAttr ".pt[2]" -type "float3" 0 -0.16710469 -1.4901161e-07 ;
	setAttr ".pt[3]" -type "float3" 0 -0.16710469 -1.4901161e-07 ;
	setAttr ".pt[4]" -type "float3" -7.1525574e-07 -3.1292439e-07 1.6391277e-07 ;
	setAttr ".pt[5]" -type "float3" -7.1525574e-07 -1.937151e-07 1.6391277e-07 ;
	setAttr ".pt[6]" -type "float3" 1.1920929e-07 5.0663948e-07 1.4901161e-08 ;
	setAttr ".pt[7]" -type "float3" 1.1920929e-07 3.8743019e-07 1.4901161e-08 ;
	setAttr ".pt[35]" -type "float3" -0.0027481695 0.12023613 0.017877312 ;
	setAttr ".pt[37]" -type "float3" 0.0027481634 0.12540412 -0.017877309 ;
	setAttr ".pt[190]" -type "float3" -0.11887286 0 -0.25565693 ;
	setAttr ".pt[192]" -type "float3" -0.19295739 0 -0.033674512 ;
	setAttr ".pt[196]" -type "float3" 0.37029845 0 0.18834038 ;
	setAttr ".pt[198]" -type "float3" 0.65425694 0 0.4421986 ;
	setAttr ".pt[200]" -type "float3" -0.092814557 0 1.0898685 ;
	setAttr ".pt[202]" -type "float3" -1.5720692 0 0.82689267 ;
	setAttr ".pt[203]" -type "float3" -0.34542793 0 0.78527683 ;
	setAttr ".pt[204]" -type "float3" -0.88296419 7.9430146 -1.0430813e-07 ;
	setAttr ".pt[205]" -type "float3" 0 7.8974452 0 ;
	setAttr ".pt[206]" -type "float3" 0 7.8974605 0 ;
	setAttr ".pt[207]" -type "float3" -0.88296419 7.9430146 -1.0430813e-07 ;
	setAttr ".pt[208]" -type "float3" 0 7.8144765 0 ;
	setAttr ".pt[209]" -type "float3" 0 7.8144698 0 ;
	setAttr ".pt[210]" -type "float3" 0 7.6903639 0 ;
	setAttr ".pt[211]" -type "float3" 0 7.6903658 0 ;
	setAttr ".pt[212]" -type "float3" 0 7.5708313 0 ;
	setAttr ".pt[213]" -type "float3" 0 7.5704565 0 ;
	setAttr ".pt[214]" -type "float3" 0 7.451643 0 ;
	setAttr ".pt[215]" -type "float3" 0 7.4505634 0 ;
	setAttr ".pt[216]" -type "float3" 0 7.3302293 0 ;
	setAttr ".pt[217]" -type "float3" 0 7.3277359 0 ;
	setAttr ".pt[218]" -type "float3" 0 7.2028785 0 ;
	setAttr ".pt[219]" -type "float3" 0 7.1981306 0 ;
	setAttr ".pt[220]" -type "float3" 0 7.0654912 0 ;
	setAttr ".pt[221]" -type "float3" 0 7.0577474 0 ;
	setAttr ".pt[222]" -type "float3" 0 6.9134541 0 ;
	setAttr ".pt[223]" -type "float3" 0 6.9022145 0 ;
	setAttr ".pt[224]" -type "float3" 0 6.7418261 0 ;
	setAttr ".pt[225]" -type "float3" 0 6.7268043 0 ;
	setAttr ".pt[226]" -type "float3" 0 6.5455117 0 ;
	setAttr ".pt[227]" -type "float3" 0 6.526536 0 ;
	setAttr ".pt[228]" -type "float3" 0 6.3195257 0 ;
	setAttr ".pt[229]" -type "float3" 0 6.2965069 0 ;
	setAttr ".pt[230]" -type "float3" 0 6.0592995 0 ;
	setAttr ".pt[231]" -type "float3" 0 6.0322762 0 ;
	setAttr ".pt[232]" -type "float3" 0 5.7610612 0 ;
	setAttr ".pt[233]" -type "float3" 0 5.7302508 0 ;
	setAttr ".pt[234]" -type "float3" 0 5.422215 0 ;
	setAttr ".pt[235]" -type "float3" 0 5.3880248 0 ;
	setAttr ".pt[236]" -type "float3" 0 5.0417466 0 ;
	setAttr ".pt[237]" -type "float3" 0 5.0047503 0 ;
	setAttr ".pt[238]" -type "float3" 0 4.6206155 0 ;
	setAttr ".pt[239]" -type "float3" 0 4.5816431 0 ;
	setAttr ".pt[240]" -type "float3" 0 4.1619258 0 ;
	setAttr ".pt[241]" -type "float3" 0 4.1220798 0 ;
	setAttr ".pt[242]" -type "float3" 0 3.6715488 0 ;
	setAttr ".pt[243]" -type "float3" 0 3.6321979 0 ;
	setAttr ".pt[244]" -type "float3" 0 3.1565328 0 ;
	setAttr ".pt[245]" -type "float3" 0 3.1192827 0 ;
	setAttr ".pt[246]" -type "float3" 0 2.6309175 0 ;
	setAttr ".pt[247]" -type "float3" 0 2.5975654 0 ;
	setAttr ".pt[248]" -type "float3" 0 2.1119714 0 ;
	setAttr ".pt[249]" -type "float3" 0 2.0844309 0 ;
	setAttr ".pt[250]" -type "float3" 0 1.6135415 0 ;
	setAttr ".pt[251]" -type "float3" 0 1.5937494 0 ;
	setAttr ".pt[252]" -type "float3" 0 1.1507849 0 ;
	setAttr ".pt[253]" -type "float3" 0 1.140642 0 ;
	setAttr ".pt[254]" -type "float3" 0 0.73971158 0 ;
	setAttr ".pt[255]" -type "float3" 0 0.73971158 0 ;
	setAttr ".pt[256]" -type "float3" 0 0.35507244 0 ;
	setAttr ".pt[257]" -type "float3" 0 0.35507244 0 ;
	setAttr ".pt[258]" -type "float3" 0 -0.033318229 0 ;
	setAttr ".pt[259]" -type "float3" 0 -0.033318229 0 ;
	setAttr ".pt[260]" -type "float3" 0 -0.42736161 0 ;
	setAttr ".pt[261]" -type "float3" 0 -0.42736161 0 ;
	setAttr ".pt[262]" -type "float3" 0 -0.82679302 0 ;
	setAttr ".pt[263]" -type "float3" 0 -0.82679302 0 ;
	setAttr ".pt[264]" -type "float3" 0 -1.2313389 0 ;
	setAttr ".pt[265]" -type "float3" 0 -1.2313389 0 ;
	setAttr ".pt[266]" -type "float3" 0 -1.6407319 0 ;
	setAttr ".pt[267]" -type "float3" 0 -1.6407319 0 ;
	setAttr ".pt[394]" -type "float3" -0.11887286 0 -0.25565693 ;
	setAttr ".pt[396]" -type "float3" -0.19295739 0 -0.033674512 ;
	setAttr ".pt[400]" -type "float3" 0.37029845 0 0.18834038 ;
	setAttr ".pt[402]" -type "float3" 0.65425694 0 0.4421986 ;
	setAttr ".pt[404]" -type "float3" -0.092814557 0 1.0898685 ;
	setAttr ".pt[406]" -type "float3" -1.5720692 0 0.82689267 ;
	setAttr ".pt[407]" -type "float3" -0.34542793 0 0.78527683 ;
createNode transform -n "nurbsToPoly2";
createNode mesh -n "nurbsToPolyShape2" -p "nurbsToPoly2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "nurbsToPoly3";
	setAttr ".t" -type "double3" 0 1.1033852941757196 0 ;
	setAttr ".s" -type "double3" 1 4.5063619407751814 1 ;
	setAttr ".rp" -type "double3" 0 -1.1033852941757196 0 ;
	setAttr ".sp" -type "double3" 0 -0.24485057096543741 0 ;
	setAttr ".spt" -type "double3" 0 -0.85853472321028224 0 ;
createNode mesh -n "nurbsToPolyShape3" -p "nurbsToPoly3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".ds" no;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 420 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0 0 -3.8146973e-06 0 0 -3.8146973e-06 
		0 0 -3.8146973e-06 0 0 -3.8146973e-06 0 0 -3.8146973e-06 0 0 -3.8146973e-06 0 0 -3.8146973e-06 
		0 0 -3.8146973e-06 0 0 -3.8146973e-06 0 0 0 0 0 -3.8146973e-06 0 0 0 0 0 0 0 0 3.8146973e-06 
		0 0 3.8146973e-06 0 0 -3.8146973e-06 0 0 -1.1444092e-05 0 0 3.8146973e-06 0 0 -7.6293945e-06 
		0 0 7.6293945e-06 0 0 -7.6293945e-06 0 0 7.6293945e-06 0 0 -3.8146973e-06 0 0 7.6293945e-06 
		0 0 3.8146973e-06 0 0 0 0 0 3.8146973e-06 0 0 3.8146973e-06 0 0 1.9073486e-06 0 0 
		-1.9073486e-06 0 0 -5.7220459e-06 0 0 1.9073486e-06 0 0 1.9073486e-06 0 0 1.9073486e-06 
		0 0 1.9073486e-06 0 0 -1.9073486e-06 0 0 1.9073486e-06 0 0 0 0 0 5.7220459e-06 0 
		0 3.8146973e-06 0 0 3.8146973e-06 0 0 0 0 0 1.9073486e-06 0 0 5.7220459e-06 0 0 0 
		0 0 1.9073486e-06 0 0 7.6293945e-06 0 0 1.9073486e-06 0 0 -1.9073486e-06 0 0 -1.9073486e-06 
		0 0 0 0 0 -1.9073486e-06 0 0 7.6293945e-06 0 0 3.8146973e-06 0 0 3.8146973e-06 0 
		0 3.8146973e-06 0 0 7.6293945e-06 0 0 7.6293945e-06 0 0 -3.8146973e-06 0 0 -3.8146973e-06 
		0 0 0 0 0 -1.9073486e-06 0 0 1.9073486e-06 0 0 3.8146973e-06 0 0 0 0 0 1.9073486e-06 
		0 0 3.8146973e-06 0 0 0 0 0 0 0 0 1.9073486e-06 0 0 3.8146973e-06 0 0 -1.9073486e-06 
		0 0 0 0 0 1.9073486e-06 0 0 -2.8610229e-06 0 0 -1.9073486e-06 0 0 2.8610229e-06 0 
		0 -2.8610229e-06 0 0 9.5367432e-07 0 0 -9.5367432e-07 0 0 -4.7683716e-07 0 0 -1.4305115e-06 
		0 0 9.5367432e-07 0 0 0 0 0 -2.3841858e-07 0 0 0 1.6298145e-09 1.4901161e-08 2.4214387e-07 
		-1.2805685e-09 -2.2351742e-08 -2.5704503e-07 -9.3132257e-10 -8.9406967e-08 -8.1956387e-08 
		4.6566129e-09 0 0 -4.6566129e-09 -5.9604645e-08 2.682209e-07 6.0535967e-09 2.9802322e-08 
		0 -7.4505806e-09 2.3841858e-07 -2.9802322e-08 7.4505806e-09 -5.9604645e-08 -1.7881393e-07 
		-1.2107193e-08 0 1.1920929e-07 9.3132257e-09 0 4.1723251e-07 -9.778887e-09 5.9604645e-07 
		5.9604645e-07 7.4505806e-09 2.3841858e-07 1.7881393e-07 1.5716068e-09 -2.3841858e-07 
		-1.1920929e-07 3.0267984e-09 4.7683716e-07 0 1.3969839e-09 0 1.7881393e-07 -8.3819032e-09 
		-7.1525574e-07 -3.5762787e-07 -4.4237822e-09 -7.1525574e-07 2.0265579e-06 1.0244548e-08 
		4.7683716e-07 -1.5497208e-06 -1.7695129e-08 9.5367432e-07 0 -8.9639798e-09 9.5367432e-07 
		7.1525574e-07 1.1175871e-08 4.7683716e-07 -3.5762787e-07 -3.5390258e-08 4.7683716e-07 
		1.1920929e-06 7.4505806e-08 0 1.3113022e-06 -2.2351742e-08 -4.7683716e-07 -2.6226044e-06 
		7.4505806e-09 -9.5367432e-07 -1.6689301e-06 4.4703484e-08 -4.7683716e-07 3.695488e-06 
		-7.4505806e-09 0 2.1457672e-06 -1.7881393e-07 -9.5367432e-07 1.1920929e-06 3.7252903e-08 
		-9.5367432e-07 -5.9604645e-07 -4.4703484e-08 9.5367432e-07 -1.1920929e-06 1.7136335e-07 
		0 3.8146973e-06 -7.4505806e-09 0 2.8610229e-06 2.2351742e-08 -9.5367432e-07 -7.1525574e-07 
		1.4901161e-08 0 -4.7683716e-07 -1.6763806e-08 0 2.3841858e-06 -1.6763806e-08 2.8610229e-06 
		-4.7683716e-07 1.3038516e-08 -3.8146973e-06 -2.3841858e-06 4.0978193e-08 0 2.1457672e-06 
		3.8184226e-08 0 0 -6.7055225e-08 1.9073486e-06 -1.4305115e-06 -1.3969839e-08 -9.5367432e-07 
		2.3841858e-07 2.8405339e-08 2.8610229e-06 -9.5367432e-07 3.3527613e-08 9.5367432e-07 
		1.4305115e-06 2.2351742e-08 -9.5367432e-07 2.1457672e-06 -1.0430813e-07 -1.9073486e-06 
		-9.5367432e-07 1.4901161e-08 -3.8146973e-06 -9.5367432e-07 3.1292439e-07 0 3.5762787e-06 
		1.4901161e-07 1.9073486e-06 2.3841858e-06 1.1920929e-07 1.9073486e-06 3.5762787e-06 
		2.5331974e-07 1.9073486e-06 3.3378601e-06 -1.1920929e-07 3.8146973e-06 -2.3841858e-07 
		-5.9604645e-08 5.7220459e-06 0 2.2351742e-08 5.7220459e-06 -4.529953e-06 -5.2154064e-08 
		0 -9.5367432e-07 3.1664968e-08 1.9073486e-06 -1.6689301e-06 2.7706847e-08 5.7220459e-06 
		-7.1525574e-07 2.6077032e-08 9.5367432e-06 -1.6689301e-06 -5.5879354e-08 1.9073486e-06 
		-1.1920929e-06 -2.7939677e-08 5.7220459e-06 6.9141388e-06 1.0058284e-07 3.8146973e-06 
		-1.4305115e-06 4.2840838e-08 -3.8146973e-06 -1.9073486e-06 1.1175871e-07 -3.8146973e-06 
		3.5762787e-06 -3.7252903e-09 0 5.4836273e-06 -2.4959445e-07 7.6293945e-06 -4.7683716e-07 
		-1.0430813e-07 -5.7220459e-06 -4.0531158e-06 7.4505806e-08 5.7220459e-06 0 -1.4901161e-07 
		3.8146973e-06 1.1920929e-06 3.5762787e-07 7.6293945e-06 5.4836273e-06 1.1175871e-07 
		-3.8146973e-06 -3.5762787e-06 3.2782555e-07 1.9073486e-06 -2.3841858e-06 2.9802322e-08 
		0 -1.4305115e-06 7.4505806e-09 3.8146973e-06 -9.5367432e-07 -8.1956387e-08 3.8146973e-06 
		-9.5367432e-07 9.3132257e-09 -5.7220459e-06 7.1525574e-07 1.7113052e-08 0 2.1457672e-06 
		-3.7252903e-08 3.8146973e-06 -1.1920929e-06 -1.8626451e-09 0 -1.6689301e-06 3.3527613e-08 
		5.7220459e-06 -4.7683716e-07 -4.3655746e-08 0 -1.9073486e-06 -4.4703484e-08 0 -2.1457672e-06;
	setAttr ".pt[166:331]" -2.2351742e-08 -1.9073486e-06 5.9604645e-07 3.7252903e-09 
		-5.7220459e-06 -1.1920929e-06 1.1920929e-07 1.9073486e-06 -2.3841858e-07 1.5646219e-07 
		-5.7220459e-06 -9.5367432e-07 -1.937151e-07 9.5367432e-06 2.9802322e-06 -3.1292439e-07 
		1.9073486e-06 -1.1920929e-07 -4.4703484e-08 1.9073486e-06 1.6689301e-06 -1.6391277e-07 
		1.9073486e-06 -2.3841858e-06 -7.4505806e-09 -1.9073486e-06 -7.1525574e-07 -5.9604645e-08 
		0 -1.4305115e-06 -3.7252903e-09 5.7220459e-06 -3.5762787e-07 8.0093741e-08 3.8146973e-06 
		7.1525574e-07 1.9557774e-08 -3.8146973e-06 3.5762787e-07 1.8626451e-09 1.9073486e-06 
		1.1920929e-06 -1.816079e-08 0 0 5.9604645e-08 0 2.3841858e-07 -1.7229468e-08 3.8146973e-06 
		-1.7881393e-07 2.7939677e-08 -3.8146973e-06 -4.1723251e-07 1.1175871e-08 1.9073486e-06 
		-1.7285347e-06 -7.4505806e-09 0 5.9604645e-07 2.6077032e-08 -3.8146973e-06 7.7486038e-07 
		0 3.8146973e-06 5.9604645e-07 -7.4505806e-09 0 -6.5565109e-07 5.9604645e-08 -3.8146973e-06 
		1.7881393e-07 0 -3.8146973e-06 -2.682209e-07 1.937151e-07 0 4.4703484e-07 -1.4901161e-08 
		5.7220459e-06 -3.2782555e-07 7.4505806e-08 -3.8146973e-06 8.9406967e-08 -7.8231096e-08 
		1.9073486e-06 1.6391277e-07 -4.6566129e-09 5.7220459e-06 1.1920929e-07 -1.1175871e-08 
		1.9073486e-06 1.3411045e-07 -9.3132257e-09 1.9073486e-06 1.4901161e-08 -1.7695129e-08 
		1.9073486e-06 1.4901161e-07 1.6763806e-08 1.9073486e-06 1.7136335e-07 -3.1664968e-08 
		1.9073486e-06 2.7008355e-08 -2.3562461e-07 1.9073486e-06 5.0105155e-07 -5.2340329e-07 
		1.9073486e-06 -4.3585896e-07 8.9406967e-07 1.9073486e-06 -3.8146973e-06 -2.2806478 
		0.0032706708 0.021827698 -2.2806478 0.0032706708 0.021827698 0 0.0032802075 -3.8146973e-06 
		0 0.0032802075 -3.8146973e-06 0 0.0032983273 -3.8146973e-06 0 0.0032983273 -3.8146973e-06 
		0 0.0033221692 -3.8146973e-06 0 0.0033221692 -3.8146973e-06 0 0.00334315 -3.8146973e-06 
		0 0.00334315 -3.8146973e-06 0 0.0033631474 0 0 0.0033631474 -3.8146973e-06 0 0.0033812672 
		-1.1444092e-05 0 0.0033812672 0 0 0.0033974797 0 0 0.0033974797 3.8146973e-06 0 0.0034146458 
		3.8146973e-06 0 0.0034146458 -3.8146973e-06 0 0.0034308583 -3.8146973e-06 0 0.0034308583 
		-3.8146973e-06 0 0.0034479946 3.8146973e-06 0 0.0034479946 7.6293945e-06 0 0.0034670681 
		3.8146973e-06 0 0.0034670681 -3.8146973e-06 0 0.0034890026 3.8146973e-06 0 0.0034890026 
		-7.6293945e-06 0 0.0035137981 0 0 0.0035137981 -3.8146973e-06 0 0.0035433322 0 0 
		0.0035433322 3.8146973e-06 0 0.0035748035 1.9073486e-06 0 0.0035748035 0 0 0.0036139041 
		-7.6293945e-06 0 0.0036139041 -1.9073486e-06 0 0.0036567897 -3.8146973e-06 0 0.0036567897 
		-1.9073486e-06 0 0.0037054271 3.8146973e-06 0 0.0037054271 -3.8146973e-06 0 0.0037621409 
		3.8146973e-06 0 0.0037621409 -3.8146973e-06 0 0.0038265139 1.9073486e-06 0 0.0038265139 
		1.9073486e-06 0 0.0038961023 1.9073486e-06 0 0.0038961023 -1.9073486e-06 0 0.0039656907 
		0 0 0.0039656907 3.8146973e-06 0 0.0040371865 7.6293945e-06 0 0.0040371865 3.8146973e-06 
		0 0.0041086823 -7.6293945e-06 0 0.0041086823 -7.6293945e-06 0 0.0041821152 3.8146973e-06 
		0 0.0041821152 0 0 0.0042555183 3.8146973e-06 0 0.0042555183 -3.8146973e-06 0 0.0043305904 
		3.8146973e-06 0 0.0043305904 -1.1444092e-05 0 0.0044066161 -3.8146973e-06 0 0.0044066161 
		-3.8146973e-06 0 0.0044834465 -3.8146973e-06 0 0.0044834465 -3.8146973e-06 0 0.20913389 
		0 0 0.20913389 -3.8146973e-06 0 0 0 0 0 3.8146973e-06 0 0 7.6293945e-06 0 0 -7.6293945e-06 
		0 0 3.8146973e-06 0 0 3.8146973e-06 0 -0.15990679 7.6293945e-06 0 -0.15990679 0 0 
		-0.38648438 1.9073486e-06 0 -0.38648438 -5.7220459e-06 0 -0.38648438 0 0 -0.38648438 
		3.8146973e-06 0 -0.38648438 -3.8146973e-06 0 -0.38648438 -5.7220459e-06 0 -0.26120028 
		1.9073486e-06 0 -0.26120028 0 0 0 0 0 0 0 0 0 9.5367432e-07 0 0 -9.5367432e-07 0 
		0 9.5367432e-07 0 0 -9.5367432e-07 0 0 4.7683716e-07 0 0 0 0 0 -4.7683716e-07 0 0 
		0 0 0 0 0 0 0 1.8626451e-09 -2.2351742e-08 -1.4901161e-07 -1.6298145e-09 1.4901161e-08 
		2.5331974e-07 5.8207661e-09 0 9.6857548e-08 3.7252903e-09 -8.9406967e-08 -1.1175871e-07 
		-6.519258e-09 1.1920929e-07 -2.8312206e-07 6.9849193e-09 5.9604645e-08 -7.4505806e-08 
		4.1909516e-09 -5.9604645e-08 5.9604645e-08 4.6566129e-09 -5.9604645e-08 -2.0861626e-07 
		-4.6566129e-10 0 -4.7683716e-07 -4.6566129e-10 3.5762787e-07 0 -1.7462298e-09 0 -4.1723251e-07 
		2.7939677e-09 -1.1920929e-07 -2.3841858e-07 -3.4924597e-10 -4.7683716e-07 5.9604645e-08 
		-1.6298145e-09 4.7683716e-07 -1.013279e-06 4.6566129e-10 0 -1.7881393e-07 2.7939677e-09 
		-7.1525574e-07 1.1920929e-07 -2.0489097e-08 -7.1525574e-07 -4.7683716e-07 2.0489097e-08 
		-2.3841858e-07 8.3446503e-07 -7.4505806e-09 4.7683716e-07 -3.5762787e-07 -3.7252903e-09 
		-4.7683716e-07 3.5762787e-07 -3.3527613e-08 0 -1.7881393e-06 -4.8428774e-08 -4.7683716e-07 
		-3.5762787e-07 -6.7055225e-08 9.5367432e-07 -9.5367432e-07 -4.4703484e-08 4.7683716e-07 
		-4.7683716e-07 -1.3411045e-07 -9.5367432e-07 4.7683716e-07 3.7252903e-08 1.4305115e-06 
		-4.7683716e-07 2.2351742e-08 -1.4305115e-06 1.6689301e-06 4.0978193e-08 9.5367432e-07 
		-3.3378601e-06 4.4703484e-08 1.9073486e-06 3.5762787e-06 -7.0780516e-08 9.5367432e-07 
		-2.3841858e-07 -4.6566129e-09 -9.5367432e-07 -2.6226044e-06 6.519258e-08 9.5367432e-07 
		-3.0994415e-06 -4.4703484e-08 0 6.4373016e-06 4.6566129e-09 -3.8146973e-06 5.2452087e-06 
		2.4214387e-08 -2.8610229e-06 1.1920929e-06 1.8626451e-08 1.9073486e-06 2.8610229e-06 
		5.7742e-08 2.8610229e-06 7.1525574e-07 -1.6763806e-08 4.7683716e-06 -5.4836273e-06;
	setAttr ".pt[332:419]" -1.4156103e-07 9.5367432e-07 -7.1525574e-07 -1.2665987e-07 
		1.9073486e-06 2.6226044e-06 -1.7881393e-07 -9.5367432e-07 5.0067902e-06 2.9802322e-08 
		-9.5367432e-07 -5.0067902e-06 -1.4901161e-07 -9.5367432e-07 4.0531158e-06 0 0 3.3378601e-06 
		0 1.9073486e-06 4.7683716e-07 1.0430813e-07 1.9073486e-06 3.3378601e-06 -1.3411045e-07 
		2.8610229e-06 -3.3378601e-06 5.2154064e-08 4.7683716e-06 -2.3841858e-06 0 -1.9073486e-06 
		-2.1457672e-06 -1.2665987e-07 1.9073486e-06 2.8610229e-06 1.2665987e-07 -1.9073486e-06 
		2.3841858e-06 -5.2154064e-08 -9.5367432e-06 0 -1.7695129e-08 -1.9073486e-06 -5.7220459e-06 
		-3.0733645e-08 -1.9073486e-06 9.5367432e-07 -5.5879354e-09 -1.9073486e-06 -4.7683716e-06 
		2.7939677e-08 1.9073486e-06 4.2915344e-06 -1.5087426e-07 1.9073486e-06 -2.8610229e-06 
		-2.2351742e-08 -5.7220459e-06 4.2915344e-06 1.4156103e-07 1.9073486e-06 2.3841858e-06 
		7.4505806e-09 5.7220459e-06 -9.5367432e-07 -1.4901161e-08 3.8146973e-06 -4.2915344e-06 
		-2.9802322e-08 -5.7220459e-06 5.2452087e-06 -3.8743019e-07 -3.8146973e-06 1.4305115e-06 
		1.6391277e-07 -3.8146973e-06 9.5367432e-07 1.4901161e-07 -7.6293945e-06 3.3378601e-06 
		-1.937151e-07 5.7220459e-06 9.5367432e-07 -1.7881393e-07 1.9073486e-06 5.2452087e-06 
		2.2351742e-07 -5.7220459e-06 -4.7683716e-07 -1.5646219e-07 -3.8146973e-06 -6.1988831e-06 
		-3.2782555e-07 -1.9073486e-06 5.2452087e-06 -3.2363459e-08 5.7220459e-06 -3.8146973e-06 
		-1.2293458e-07 -1.9073486e-06 0 7.4505806e-09 -1.9073486e-06 -1.4305115e-06 -8.1956387e-08 
		-3.8146973e-06 1.9073486e-06 1.8067658e-07 -3.8146973e-06 -5.2452087e-06 -5.5879354e-08 
		-3.8146973e-06 -6.6757202e-06 -2.2724271e-07 -5.7220459e-06 -7.1525574e-06 7.4505806e-09 
		-9.5367432e-06 4.2915344e-06 -1.7881393e-07 1.9073486e-06 7.1525574e-06 2.2351742e-08 
		0 -4.2915344e-06 3.4272671e-07 -5.7220459e-06 8.1062317e-06 -1.3411045e-07 3.8146973e-06 
		-8.3446503e-06 5.9604645e-08 -1.9073486e-06 -9.5367432e-07 2.30968e-07 0 -7.1525574e-07 
		0 -1.9073486e-06 -4.7683716e-07 8.1956387e-08 3.8146973e-06 2.6226044e-06 -1.0058284e-07 
		-1.9073486e-06 6.9141388e-06 -4.4703484e-08 3.8146973e-06 -4.7683716e-07 -8.8475645e-08 
		-5.7220459e-06 -2.3841858e-07 -5.9604645e-08 0 0 6.7055225e-08 0 1.6689301e-06 1.7881393e-07 
		0 2.1457672e-06 1.359731e-07 0 1.1920929e-06 3.7252903e-08 1.9073486e-06 -1.6689301e-06 
		1.3783574e-07 1.9073486e-06 5.7220459e-06 1.1175871e-08 1.9073486e-06 6.9141388e-06 
		-7.4505806e-09 1.9073486e-06 5.4836273e-06 8.9406967e-08 -1.9073486e-06 -1.6689301e-06 
		-4.4703484e-08 -1.9073486e-06 7.1525574e-07 -7.4505806e-09 7.6293945e-06 7.1525574e-07 
		1.4901161e-08 3.8146973e-06 0 -2.7567148e-07 -3.8146973e-06 2.1457672e-06 7.4505806e-09 
		-7.6293945e-06 7.1525574e-07 1.1175871e-07 3.8146973e-06 -4.2915344e-06 7.4505806e-08 
		0 3.5762787e-06 7.4505806e-08 1.9073486e-06 -2.1457672e-06 -1.8626451e-09 1.9073486e-06 
		0 -1.4528632e-07 1.9073486e-06 -4.0531158e-06 2.9802322e-08 -3.8146973e-06 -2.1457672e-06 
		-1.1175871e-07 -3.8146973e-06 3.8146973e-06 -2.7567148e-07 -3.8146973e-06 2.3841858e-07 
		3.3527613e-08 9.5367432e-06 9.5367432e-07 8.3819032e-07 -3.8146973e-06 -1.4305115e-06 
		-5.4761767e-07 -3.8146973e-06 -4.7683716e-06 0 -0.033944741 -3.8146973e-06 0 -0.033764705 
		-3.8146973e-06 0 -0.033713594 -3.8146973e-06 0 -0.033893362 -3.8146973e-06 0 -6.4458399 
		-3.8146973e-06 0 -5.9704242 -3.8146973e-06 0 -5.970768 -3.8146973e-06 0 -6.4461865 
		-3.8146973e-06 0 -0.033854738 -3.8146973e-06 0 -0.033803478 -3.8146973e-06 0 -6.7966475 
		-3.8146973e-06 0 -6.3212304 -3.8146973e-06;
createNode mesh -n "polySurfaceShape2" -p "nurbsToPoly3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 204 ".uvst[0].uvsp[0:203]" -type "float2" 0 0 0 1 0.33333334
		 0 0.33333334 1 1 0 1 1 2 0 2 1 3 0 3 1 4 0 4 1 5 0 5 1 6 0 6 1 7 0 7 1 8 0 8 1 9
		 0 9 1 10 0 10 1 11 0 11 1 12 0 12 1 13 0 13 1 14 0 14 1 15 0 15 1 16 0 16 1 17 0
		 17 1 18 0 18 1 19 0 19 1 20 0 20 1 21 0 21 1 22 0 22 1 23 0 23 1 24 0 24 1 25 0 25
		 1 26 0 26 1 27 0 27 1 28 0 28 1 29 0 29 1 30 0 30 1 31 0 31 1 32 0 32 1 33 0 33 1
		 34 0 34 1 35 0 35 1 36 0 36 1 37 0 37 1 38 0 38 1 39 0 39 1 40 0 40 1 41 0 41 1 42
		 0 42 1 43 0 43 1 44 0 44 1 45 0 45 1 46 0 46 1 47 0 47 1 48 0 48 1 49 0 49 1 50 0
		 50 1 51 0 51 1 52 0 52 1 53 0 53 1 54 0 54 1 55 0 55 1 56 0 56 1 57 0 57 1 58 0 58
		 1 59 0 59 1 60 0 60 1 61 0 61 1 62 0 62 1 63 0 63 1 64 0 64 1 65 0 65 1 66 0 66 1
		 67 0 67 1 68 0 68 1 69 0 69 1 70 0 70 1 71 0 71 1 72 0 72 1 73 0 73 1 74 0 74 1 75
		 0 75 1 76 0 76 1 77 0 77 1 78 0 78 1 79 0 79 1 80 0 80 1 81 0 81 1 82 0 82 1 83 0
		 83 1 84 0 84 1 85 0 85 1 86 0 86 1 87 0 87 1 88 0 88 1 89 0 89 1 90 0 90 1 91 0 91
		 1 92 0 92 1 93 0 93 1 94 0 94 1 95 0 95 1 96 0 96 1 97 0 97 1 98 0 98 1 98.66666412
		 0 98.66666412 1 99 0 99 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 204 ".vt";
	setAttr ".vt[0:165]"  0 0 35.11851883 0 0 41.041072845 0.89911509 0.10018433 35.099342346
		 1.051262379 0.10022047 41.021896362 2.60309982 0.26716939 35.0023345947 3.042285442 0.26715261 40.91495132
		 5.72114754 0.50078601 34.57143402 6.68922186 0.50079054 40.42347717 9.12155247 0.70310521 33.75832748
		 10.66875839 0.70310396 39.48656082 12.79797459 0.8858757 32.45606995 14.97489071 0.885876 37.97864151
		 16.6370163 1.053830504 30.56088066 19.47580719 1.053830385 35.7772522 20.51536942 1.21358192 27.97818184
		 24.028064728 1.21358192 32.77036285 24.27108383 1.3712393 24.63296509 28.44264221 1.3712393 28.86839485
		 27.71158791 1.53304601 20.48124695 32.4941864 1.53304601 24.017698288 30.61617661 1.70521009 15.52276993
		 35.92369461 1.70521009 18.21550751 32.74527359 1.89394915 9.81387424 38.44918442 1.89394915 11.52522373
		 33.8541069 2.10547757 3.47923374 39.78151321 2.10547757 4.090431213 33.71186447 2.34601092 -3.27954531
		 39.64675903 2.34601092 -3.85462976 32.12575912 2.62176704 -10.18026066 37.81442261 2.62176704 -11.98029137
		 28.96883392 2.93894744 -16.86417389 34.13028336 2.93894744 -19.86568832 24.20948029 3.30382538 -22.90937233
		 28.5513916 3.30382538 -27.013900757 17.93931007 3.72239661 -27.85562515 21.17948914 3.72239661 -32.88069153
		 10.39511967 4.20169258 -31.24105263 12.28767872 4.20169258 -36.91730118 1.97029281 4.74489212 -32.6496048
		 2.3349371 4.74489212 -38.626297 -6.78979731 5.3695364 -31.76671028 -8.03808403 5.3695364 -37.62745667
		 -15.21274757 6.039567947 -28.43753624 -18.037284851 6.039567947 -33.727314 -22.54693794 6.71233749 -22.72050667
		 -26.77052307 6.71233749 -26.98366547 -28.032720566 7.39880371 -14.92672634 -33.33111954 7.39880371 -17.75403595
		 -30.99279213 8.095567703 -5.63487387 -36.90484619 8.095567703 -6.71555567 -30.93340683 8.80306816 4.32722092
		 -36.89070129 8.80306816 5.15443087 -27.64365387 9.52072811 13.94188023 -33.020629883 9.52072811 16.64646339
		 -21.27606773 10.24822712 22.10194206 -25.45824432 10.24822712 26.43652725 -12.3900547 10.98518562 27.74829102
		 -14.85425568 10.98518562 33.24910355 -1.94119215 11.73124504 30.029016495 -2.3380177 11.73124504 36.047737122
		 8.79500008 12.48602581 28.45915413 10.56936932 12.48602581 34.22841644 18.36836624 13.24916553 23.052183151
		 22.12561798 13.24916553 27.78136444 25.35681152 14.020299911 14.39222431 30.60866737 14.020299911 17.38358116
		 28.60245705 14.79905128 3.62059498 34.60125732 14.79905128 4.38960218 27.44344139 15.5850563 -7.68090677
		 33.27383804 15.5850563 -9.30226231 21.89382172 16.37795258 -17.708004 26.60851669 16.37795258 -21.50769615
		 12.72575092 17.17735863 -24.73072052 15.50777912 17.17735863 -30.11293411 1.41621232 17.98291588 -27.4240303
		 1.7404685 17.98291588 -33.47735977 -10.055797577 18.79425621 -25.16750526 -12.2948494 18.79425621 -30.8042202
		 -19.54552841 19.61100578 -18.24459457 -23.97268295 19.61100578 -22.39452553 -25.16246796 20.43279839 -7.87830353
		 -30.95197487 20.43279839 -9.70495224 -25.69141388 21.25927162 3.93281031 -31.69695091 21.25927162 4.83804274
		 -20.91814804 22.090045929 14.77295208 -25.88936806 22.090045929 18.2659626 -11.76613617 22.92476082 22.30869293
		 -14.61491776 22.92476082 27.67749977 -0.18174934 23.76305008 24.82808876 -0.24206208 23.76305008 30.90744209
		 11.23974133 24.60453796 21.69193077 14.022853851 24.60453796 27.098953247 19.83017159 25.44886017 13.56906986
		 24.84034157 25.44886017 17.018135071 23.50200653 26.29565239 2.3646915 29.55327225 26.29565239 2.99149418
		 21.31650543 27.14453697 -9.17833328 26.91222191 27.14453697 -11.56747818 13.80045605 27.99515724 -18.13885498
		 17.50019455 27.99515724 -22.9697628 2.89387727 28.84712791 -22.18305779 3.70093632 28.84712791 -28.21433067
		 -8.49984074 29.70010185 -20.23321342 -10.83729172 29.70010185 -25.85121918 -17.27157593 30.55369949 -12.83283043
		 -22.14245987 30.55369949 -16.47892189 -20.98262024 31.40754509 -2.071012259 -27.03446579 31.40754509 -2.69096589
		 -18.60452843 32.26128769 8.95714569 -24.094877243 32.26128769 11.57452106 -10.88277626 33.11454773 17.028411865
		 -14.17776108 33.11454773 22.13903427 -0.1779644 33.96694946 19.76550674 -0.25789112 33.96694946 25.84376526
		 10.21070957 34.81814575 16.40217781 13.39978886 34.81814575 21.57450485 17.057682037 35.66775894 8.074629784
		 22.53570175 35.66775894 10.69779968 18.25206757 36.51540756 -2.49172068 24.27055359 36.51540756 -3.28492165
		 13.51650143 37.36074066 -11.83872509 18.099578857 37.36074066 -15.81406021 4.5374608 38.20338821 -16.91451454
		 6.13762379 38.20338821 -22.76246262 -5.57381916 39.042964935 -16.11859131 -7.52402306 39.042964935 -21.85457802
		 -13.3381567 39.87912369 -9.87511063 -18.18387985 39.87912369 -13.50336552 -16.12722778 40.71149063 -0.50509393
		 -22.17123795 40.71149063 -0.72831774 -13.10977554 41.5396843 8.5894289 -18.18305397 41.5396843 11.87130928
		 -5.55979538 42.36335373 14.15727806 -7.80014896 42.36335373 19.76200104 3.61227369 43.18212509 14.29643059
		 5.052352428 43.18212509 20.15094948 10.95407009 43.99562073 9.16261292 15.54750061 43.99562073 13.05628109
		 13.78658485 44.80348587 0.89615649 19.78489304 44.80348587 1.32721376 11.22807217 45.60534668 -7.22196627
		 16.30174446 45.60534668 -10.43476582 4.51454401 46.40082932 -12.067978859 6.65725327 46.40082932 -17.66814804
		 -3.52587485 47.1895752 -11.90762329 -5.18169785 47.1895752 -17.66230011 -9.64253616 47.97121429 -7.069522858
		 -14.43273258 47.97121429 -10.63698292 -11.49953079 48.74536514 0.25349393 -17.44066429 48.74536514 0.34172976
		 -8.58854866 49.5116806 6.96042538 -13.1972599 49.5116806 10.64215755 -2.38334107 50.26978302 10.34292793
		 -3.73472762 50.26978302 16.028833389 4.34399319 51.019290924 9.20590496 6.7749505 51.019290924 14.44920826
		 8.74360371 51.75985718 4.31566429 13.84255695 51.75985718 6.87505198 9.10920811 52.49110794 -2.006778717
		 14.6082716 52.49110794 -3.17967081 5.56641054 53.21265793 -6.957232 9.052202225 53.21265793 -11.25419903
		 -0.068912573 53.92416382 -8.49715519 -0.075674325 53.92416382 -13.9343462 -5.17833471 54.62524414 -6.21505499
		 -8.5651598 54.62524414 -10.33873463;
	setAttr ".vt[166:203]" -7.55365658 55.31552505 -1.42187309 -12.68738937 55.31552505 -2.42720294
		 -6.36879587 55.99465179 3.54141641 -10.86542225 55.99465179 5.99676418 -2.46917319 56.66225052 6.43443155
		 -4.30344439 56.66225052 11.10033989 2.12939835 57.31794357 6.14159107 3.6949923 57.31794357 10.7878294
		 5.26192808 57.96138 3.10923052 9.36479855 57.96138 5.58629227 5.64123249 58.59218216 -0.9843781
		 10.26334381 58.59218216 -1.74163711 3.39559984 59.2099762 -4.12620354 6.34450006 59.2099762 -7.62703705
		 -0.11841003 59.81440735 -4.96199226 -0.16793171 59.81440735 -9.43620777 -3.088914871 60.40509796 -3.38849664
		 -5.99027824 60.40509796 -6.66481972 -4.1815567 60.98167801 -0.47645822 -8.4294548 60.98167801 -1.031023979
		 -3.14757514 61.5437851 2.18841243 -6.63905907 61.5437851 4.52003956 -0.82042998 62.091053009 3.36099648
		 -1.88430631 62.091056824 7.34223509 1.44532025 62.62309265 2.72748375 3.25158644 62.62307739 6.35523748
		 2.54634428 63.13961029 0.93984199 6.24987507 63.1396637 2.43508148 2.17521572 63.63996506 -0.86654234
		 5.89330006 63.63977432 -2.19557595 0.86526036 64.12479401 -1.77437222 2.7311368 64.12550354 -5.21160221
		 -0.45872769 64.59002686 -1.51667511 -1.33839202 64.58737946 -5.30284119 -0.84660208 64.89602661 -0.95641124
		 -3.31051373 64.90172577 -3.69659686 -0.91784894 65.039398193 -0.6355592 -3.84029126 65.039398193 -2.65918732;
	setAttr -s 304 ".ed";
	setAttr ".ed[0:165]"  0 2 0 2 3 1 3 1 0 1 0 0 2 4 0 4 5 1 5 3 0 4 6 0 6 7 1
		 7 5 0 6 8 0 8 9 1 9 7 0 8 10 0 10 11 1 11 9 0 10 12 0 12 13 1 13 11 0 12 14 0 14 15 1
		 15 13 0 14 16 0 16 17 1 17 15 0 16 18 0 18 19 1 19 17 0 18 20 0 20 21 1 21 19 0 20 22 0
		 22 23 1 23 21 0 22 24 0 24 25 1 25 23 0 24 26 0 26 27 1 27 25 0 26 28 0 28 29 1 29 27 0
		 28 30 0 30 31 1 31 29 0 30 32 0 32 33 1 33 31 0 32 34 0 34 35 1 35 33 0 34 36 0 36 37 1
		 37 35 0 36 38 0 38 39 1 39 37 0 38 40 0 40 41 1 41 39 0 40 42 0 42 43 1 43 41 0 42 44 0
		 44 45 1 45 43 0 44 46 0 46 47 1 47 45 0 46 48 0 48 49 1 49 47 0 48 50 0 50 51 1 51 49 0
		 50 52 0 52 53 1 53 51 0 52 54 0 54 55 1 55 53 0 54 56 0 56 57 1 57 55 0 56 58 0 58 59 1
		 59 57 0 58 60 0 60 61 1 61 59 0 60 62 0 62 63 1 63 61 0 62 64 0 64 65 1 65 63 0 64 66 0
		 66 67 1 67 65 0 66 68 0 68 69 1 69 67 0 68 70 0 70 71 1 71 69 0 70 72 0 72 73 1 73 71 0
		 72 74 0 74 75 1 75 73 0 74 76 0 76 77 1 77 75 0 76 78 0 78 79 1 79 77 0 78 80 0 80 81 1
		 81 79 0 80 82 0 82 83 1 83 81 0 82 84 0 84 85 1 85 83 0 84 86 0 86 87 1 87 85 0 86 88 0
		 88 89 1 89 87 0 88 90 0 90 91 1 91 89 0 90 92 0 92 93 1 93 91 0 92 94 0 94 95 1 95 93 0
		 94 96 0 96 97 1 97 95 0 96 98 0 98 99 1 99 97 0 98 100 0 100 101 1 101 99 0 100 102 0
		 102 103 1 103 101 0 102 104 0 104 105 1 105 103 0 104 106 0 106 107 1 107 105 0 106 108 0
		 108 109 1 109 107 0 108 110 0 110 111 1 111 109 0;
	setAttr ".ed[166:303]" 110 112 0 112 113 1 113 111 0 112 114 0 114 115 1 115 113 0
		 114 116 0 116 117 1 117 115 0 116 118 0 118 119 1 119 117 0 118 120 0 120 121 1 121 119 0
		 120 122 0 122 123 1 123 121 0 122 124 0 124 125 1 125 123 0 124 126 0 126 127 1 127 125 0
		 126 128 0 128 129 1 129 127 0 128 130 0 130 131 1 131 129 0 130 132 0 132 133 1 133 131 0
		 132 134 0 134 135 1 135 133 0 134 136 0 136 137 1 137 135 0 136 138 0 138 139 1 139 137 0
		 138 140 0 140 141 1 141 139 0 140 142 0 142 143 1 143 141 0 142 144 0 144 145 1 145 143 0
		 144 146 0 146 147 1 147 145 0 146 148 0 148 149 1 149 147 0 148 150 0 150 151 1 151 149 0
		 150 152 0 152 153 1 153 151 0 152 154 0 154 155 1 155 153 0 154 156 0 156 157 1 157 155 0
		 156 158 0 158 159 1 159 157 0 158 160 0 160 161 1 161 159 0 160 162 0 162 163 1 163 161 0
		 162 164 0 164 165 1 165 163 0 164 166 0 166 167 1 167 165 0 166 168 0 168 169 1 169 167 0
		 168 170 0 170 171 1 171 169 0 170 172 0 172 173 1 173 171 0 172 174 0 174 175 1 175 173 0
		 174 176 0 176 177 1 177 175 0 176 178 0 178 179 1 179 177 0 178 180 0 180 181 1 181 179 0
		 180 182 0 182 183 1 183 181 0 182 184 0 184 185 1 185 183 0 184 186 0 186 187 1 187 185 0
		 186 188 0 188 189 1 189 187 0 188 190 0 190 191 1 191 189 0 190 192 0 192 193 1 193 191 0
		 192 194 0 194 195 1 195 193 0 194 196 0 196 197 1 197 195 0 196 198 0 198 199 1 199 197 0
		 198 200 0 200 201 1 201 199 0 200 202 0 202 203 0 203 201 0;
	setAttr -s 101 -ch 404 ".fc[0:100]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 3 2
		f 4 1 -7 -6 -5
		mu 0 4 2 3 5 4
		f 4 5 -10 -9 -8
		mu 0 4 4 5 7 6
		f 4 8 -13 -12 -11
		mu 0 4 6 7 9 8
		f 4 11 -16 -15 -14
		mu 0 4 8 9 11 10
		f 4 14 -19 -18 -17
		mu 0 4 10 11 13 12
		f 4 17 -22 -21 -20
		mu 0 4 12 13 15 14
		f 4 20 -25 -24 -23
		mu 0 4 14 15 17 16
		f 4 23 -28 -27 -26
		mu 0 4 16 17 19 18
		f 4 26 -31 -30 -29
		mu 0 4 18 19 21 20
		f 4 29 -34 -33 -32
		mu 0 4 20 21 23 22
		f 4 32 -37 -36 -35
		mu 0 4 22 23 25 24
		f 4 35 -40 -39 -38
		mu 0 4 24 25 27 26
		f 4 38 -43 -42 -41
		mu 0 4 26 27 29 28
		f 4 41 -46 -45 -44
		mu 0 4 28 29 31 30
		f 4 44 -49 -48 -47
		mu 0 4 30 31 33 32
		f 4 47 -52 -51 -50
		mu 0 4 32 33 35 34
		f 4 50 -55 -54 -53
		mu 0 4 34 35 37 36
		f 4 53 -58 -57 -56
		mu 0 4 36 37 39 38
		f 4 56 -61 -60 -59
		mu 0 4 38 39 41 40
		f 4 59 -64 -63 -62
		mu 0 4 40 41 43 42
		f 4 62 -67 -66 -65
		mu 0 4 42 43 45 44
		f 4 65 -70 -69 -68
		mu 0 4 44 45 47 46
		f 4 68 -73 -72 -71
		mu 0 4 46 47 49 48
		f 4 71 -76 -75 -74
		mu 0 4 48 49 51 50
		f 4 74 -79 -78 -77
		mu 0 4 50 51 53 52
		f 4 77 -82 -81 -80
		mu 0 4 52 53 55 54
		f 4 80 -85 -84 -83
		mu 0 4 54 55 57 56
		f 4 83 -88 -87 -86
		mu 0 4 56 57 59 58
		f 4 86 -91 -90 -89
		mu 0 4 58 59 61 60
		f 4 89 -94 -93 -92
		mu 0 4 60 61 63 62
		f 4 92 -97 -96 -95
		mu 0 4 62 63 65 64
		f 4 95 -100 -99 -98
		mu 0 4 64 65 67 66
		f 4 98 -103 -102 -101
		mu 0 4 66 67 69 68
		f 4 101 -106 -105 -104
		mu 0 4 68 69 71 70
		f 4 104 -109 -108 -107
		mu 0 4 70 71 73 72
		f 4 107 -112 -111 -110
		mu 0 4 72 73 75 74
		f 4 110 -115 -114 -113
		mu 0 4 74 75 77 76
		f 4 113 -118 -117 -116
		mu 0 4 76 77 79 78
		f 4 116 -121 -120 -119
		mu 0 4 78 79 81 80
		f 4 119 -124 -123 -122
		mu 0 4 80 81 83 82
		f 4 122 -127 -126 -125
		mu 0 4 82 83 85 84
		f 4 125 -130 -129 -128
		mu 0 4 84 85 87 86
		f 4 128 -133 -132 -131
		mu 0 4 86 87 89 88
		f 4 131 -136 -135 -134
		mu 0 4 88 89 91 90
		f 4 134 -139 -138 -137
		mu 0 4 90 91 93 92
		f 4 137 -142 -141 -140
		mu 0 4 92 93 95 94
		f 4 140 -145 -144 -143
		mu 0 4 94 95 97 96
		f 4 143 -148 -147 -146
		mu 0 4 96 97 99 98
		f 4 146 -151 -150 -149
		mu 0 4 98 99 101 100
		f 4 149 -154 -153 -152
		mu 0 4 100 101 103 102
		f 4 152 -157 -156 -155
		mu 0 4 102 103 105 104
		f 4 155 -160 -159 -158
		mu 0 4 104 105 107 106
		f 4 158 -163 -162 -161
		mu 0 4 106 107 109 108
		f 4 161 -166 -165 -164
		mu 0 4 108 109 111 110
		f 4 164 -169 -168 -167
		mu 0 4 110 111 113 112
		f 4 167 -172 -171 -170
		mu 0 4 112 113 115 114
		f 4 170 -175 -174 -173
		mu 0 4 114 115 117 116
		f 4 173 -178 -177 -176
		mu 0 4 116 117 119 118
		f 4 176 -181 -180 -179
		mu 0 4 118 119 121 120
		f 4 179 -184 -183 -182
		mu 0 4 120 121 123 122
		f 4 182 -187 -186 -185
		mu 0 4 122 123 125 124
		f 4 185 -190 -189 -188
		mu 0 4 124 125 127 126
		f 4 188 -193 -192 -191
		mu 0 4 126 127 129 128
		f 4 191 -196 -195 -194
		mu 0 4 128 129 131 130
		f 4 194 -199 -198 -197
		mu 0 4 130 131 133 132
		f 4 197 -202 -201 -200
		mu 0 4 132 133 135 134
		f 4 200 -205 -204 -203
		mu 0 4 134 135 137 136
		f 4 203 -208 -207 -206
		mu 0 4 136 137 139 138
		f 4 206 -211 -210 -209
		mu 0 4 138 139 141 140
		f 4 209 -214 -213 -212
		mu 0 4 140 141 143 142
		f 4 212 -217 -216 -215
		mu 0 4 142 143 145 144
		f 4 215 -220 -219 -218
		mu 0 4 144 145 147 146
		f 4 218 -223 -222 -221
		mu 0 4 146 147 149 148
		f 4 221 -226 -225 -224
		mu 0 4 148 149 151 150
		f 4 224 -229 -228 -227
		mu 0 4 150 151 153 152
		f 4 227 -232 -231 -230
		mu 0 4 152 153 155 154
		f 4 230 -235 -234 -233
		mu 0 4 154 155 157 156
		f 4 233 -238 -237 -236
		mu 0 4 156 157 159 158
		f 4 236 -241 -240 -239
		mu 0 4 158 159 161 160
		f 4 239 -244 -243 -242
		mu 0 4 160 161 163 162
		f 4 242 -247 -246 -245
		mu 0 4 162 163 165 164
		f 4 245 -250 -249 -248
		mu 0 4 164 165 167 166
		f 4 248 -253 -252 -251
		mu 0 4 166 167 169 168
		f 4 251 -256 -255 -254
		mu 0 4 168 169 171 170
		f 4 254 -259 -258 -257
		mu 0 4 170 171 173 172
		f 4 257 -262 -261 -260
		mu 0 4 172 173 175 174
		f 4 260 -265 -264 -263
		mu 0 4 174 175 177 176
		f 4 263 -268 -267 -266
		mu 0 4 176 177 179 178
		f 4 266 -271 -270 -269
		mu 0 4 178 179 181 180
		f 4 269 -274 -273 -272
		mu 0 4 180 181 183 182
		f 4 272 -277 -276 -275
		mu 0 4 182 183 185 184
		f 4 275 -280 -279 -278
		mu 0 4 184 185 187 186
		f 4 278 -283 -282 -281
		mu 0 4 186 187 189 188
		f 4 281 -286 -285 -284
		mu 0 4 188 189 191 190
		f 4 284 -289 -288 -287
		mu 0 4 190 191 193 192
		f 4 287 -292 -291 -290
		mu 0 4 192 193 195 194
		f 4 290 -295 -294 -293
		mu 0 4 194 195 197 196
		f 4 293 -298 -297 -296
		mu 0 4 196 197 199 198
		f 4 296 -301 -300 -299
		mu 0 4 198 199 201 200
		f 4 299 -304 -303 -302
		mu 0 4 200 201 203 202;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode revolve -n "revolve1";
	setAttr ".s" 6;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode nurbsTessellate -n "nurbsTessellate1";
	setAttr ".f" 3;
	setAttr ".pt" 1;
	setAttr ".chr" 0.9145;
	setAttr ".un" 1;
	setAttr ".vt" 1;
	setAttr ".vn" 60;
	setAttr ".ucr" no;
	setAttr ".cht" 0.01;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyNormalizeUV -n "polyNormalizeUV1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pa" no;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0 -0.75 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 180 9.3530740737915039 ;
	setAttr ".r" 10.800000190734863;
createNode polyNormalizeUV -n "polyNormalizeUV2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pa" no;
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 0 -0.75 ;
	setAttr ".ro" -type "double3" 90 0 0 ;
	setAttr ".ps" -type "double2" 180 9.3530740737915039 ;
	setAttr ".r" 10.800000190734863;
createNode polyNormalizeUV -n "polyNormalizeUV3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".pa" no;
createNode polySplit -n "polySplit1";
	setAttr -s 2 ".sps[0].sp";
	setAttr ".sps[0].sp[0].f" 3;
	setAttr ".sps[0].sp[0].t" 3;
	setAttr ".sps[0].sp[0].bc" -type "double3" 1 0 0 ;
	setAttr ".sps[0].sp[1].f" 3;
	setAttr ".sps[0].sp[1].t" 3;
	setAttr ".sps[0].sp[1].bc" -type "double3" 0 1 0 ;
	setAttr ".c2v" yes;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 3.8506851099704207 0 0 0 0 3.8506851099704207 0 0
		 0 0 3.8506851099704207 0 0 0 0 1;
createNode polyTriangulate -n "polyTriangulate1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 6 "f[0:1]" "f[6:7]" "f[18:21]" "f[24:33]" "f[38:41]" "f[46:47]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[17]" -type "float2" 0.375 0.375 ;
	setAttr ".uvtk[18]" -type "float2" -0.375 -0.625 ;
	setAttr ".uvtk[19]" -type "float2" -0.875 -0.125 ;
	setAttr ".uvtk[22]" -type "float2" 0.875 0.875 ;
	setAttr -s 68 ".nuv[0:67]"  0 7 0 0 0 1 1 0 0 
		12 1 1 1 12 0 0 1 1 1 0 1 4 1 1 2 4 0 0 
		2 0 1 0 2 12 1 1 3 12 0 0 3 0 1 0 3 6
		 1 1 4 4 0 0 4 1 1 0 4 13 1 1 5 13 0 0 5 
		1 1 0 5 9 1 1 6 9 0 0 6 3 1 0 6 13 1 1 
		7 13 0 0 7 3 1 0 7 5 1 1 8 5 0 0 8 2
		 1 0 8 13 1 1 9 13 0 0 9 2 1 0 9 8 1 1 10 
		8 0 0 10 0 1 0 10 13 1 1 11 13 0 0 11 0 1 0 
		11 4 1 1 12 5 0 0 12 3 1 0 12 14 1 1 13 14
		 0 0 13 3 1 0 14 2 1 0 14 14 1 1 15 14 0 0 15 
		2 1 0 15 5 1 1 16 3 1 0 16 15 1 1 17 15 0 0 
		17 3 1 0 17 9 1 1 18 9 0 0 18 1 1 0 18 15
		 1 1 19 15 0 0 19 1 1 0 19 7 1 1 20 6 0 0 20 
		0 1 0 20 16 1 1 21 16 0 0 21 0 1 0 21 8 1 1 
		22 8 0 0 22 2 1 0 22 16 1 1 23 16 0 0 23 2
		 1 0;
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode animCurveTA -n "locator1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "locator1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "locator1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "locator1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "locator1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "locator1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "locator1_translateZ";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 38.079794963530652 100 2.8937541528506436;
	setAttr -s 2 ".kix[0:1]"  0.61317229270935059 0.12079793959856033;
	setAttr -s 2 ".kiy[0:1]"  -0.78994923830032349 -0.99267715215682983;
	setAttr -s 2 ".kox[0:1]"  0.61317241191864014 0.12079796195030212;
	setAttr -s 2 ".koy[0:1]"  -0.78994911909103394 -0.99267709255218506;
createNode animCurveTL -n "locator2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "locator2_translateY";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 20 5.3771010244213437 100 65.03939450704236;
	setAttr -s 3 ".kit[1:2]"  18 1;
	setAttr -s 3 ".kot[1:2]"  18 1;
	setAttr -s 3 ".kix[2]"  0.093903079628944397;
	setAttr -s 3 ".kiy[2]"  0.99558132886886597;
	setAttr -s 3 ".kox[2]"  0.48350784182548523;
	setAttr -s 3 ".koy[2]"  0.87533998489379883;
createNode animCurveTL -n "locator2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "locator2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "locator2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "locator2_rotateY";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 100 2755.2995593675282;
	setAttr -s 2 ".kix[0:1]"  0.22241520881652832 0.056656759232282639;
	setAttr -s 2 ".kiy[0:1]"  -0.9749521017074585 0.998393714427948;
	setAttr -s 2 ".kox[0:1]"  0.50534486770629883 0.086450487375259399;
	setAttr -s 2 ".koy[0:1]"  0.86291754245758057 0.99625611305236816;
createNode animCurveTA -n "locator2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "locator2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode motionTrail -n "snapshot1";
	setAttr ".s" 1;
	setAttr ".e" 100;
createNode loft -n "loft1";
	setAttr -s 100 ".ic";
	setAttr ".u" yes;
createNode nurbsTessellate -n "nurbsTessellate2";
	setAttr ".f" 3;
	setAttr ".pt" 1;
	setAttr ".chr" 0.9145;
	setAttr ".ut" 2;
	setAttr ".un" 90;
	setAttr ".vt" 1;
	setAttr ".vn" 1;
	setAttr ".ucr" no;
	setAttr ".cht" 0.01;
	setAttr ".mnd" yes;
	setAttr ".ntr" no;
createNode animCurveTU -n "locator1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  2 5.9225528266801968 72 5.5824820148302203
		 100 3.554678553402959;
createNode animCurveTU -n "locator1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "locator1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[0:100]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -8.55 0 ;
	setAttr ".pvt" -type "float3" 0.55419922 14.405956 0.62994862 ;
	setAttr ".rs" 96084171;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -20.55523681640625 0 -21.012161254882812 ;
	setAttr ".cbx" -type "double3" 21.66363525390625 28.811912536621094 22.272058486938477 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 50 ".tk[2:49]" -type "float3"  0 -0.05525751 0 0 -0.05535084
		 0 0 -0.14926167 0 0 -0.14921831 0 0 -0.30303478 0 0 -0.30304641 0 0 -0.45198777 0
		 0 -0.45161065 0 0 -0.59907395 0 0 -0.59799504 0 0 -0.74113774 0 0 -0.73864418 0 0
		 -0.875965 0 0 -0.87121636 0 0 -1.000395298 0 0 -0.99265027 0 0 -1.11090362 0 0 -1.099662542
		 0 0 -1.20359766 0 0 -1.18857396 0 0 -1.27444196 0 0 -1.25546372 0 0 -1.31950653 0
		 0 -1.29648471 0 0 -1.33528161 0 0 -1.30825484 0 0 -1.31904984 0 0 -1.28823614 0 0
		 -1.26927495 0 0 -1.23508108 0 0 -1.18600309 0 0 -1.14900279 0 0 -1.071232557 0 0
		 -1.032255173 0 0 -0.92919832 0 0 -0.88934761 0 0 -0.76656157 0 0 -0.72720557 0 0
		 -0.59242535 0 0 -0.55517125 0 0 -0.41816851 0 0 -0.38481238 0 0 -0.25706661 0 0 -0.22952318
		 0 0 -0.12369705 0 0 -0.10390279 0 0 -0.033135716 0 0 -0.022935225 0;
createNode nurbsTessellate -n "nurbsTessellate3";
	setAttr ".f" 3;
	setAttr ".pt" 1;
	setAttr ".chr" 0.9145;
	setAttr ".un" 1;
	setAttr ".vt" 1;
	setAttr ".vn" 60;
	setAttr ".ucr" no;
	setAttr ".cht" 0.01;
	setAttr ".mnd" yes;
	setAttr ".ntr" no;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[0:100]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -12.940000000000001 0 ;
	setAttr ".pvt" -type "float3" 1.4383335 32.519699 1.2073879 ;
	setAttr ".rs" 349239565;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -36.90484619140625 0 -38.626296997070312 ;
	setAttr ".cbx" -type "double3" 39.781513214111328 65.039398193359375 41.041072845458984 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[259:260]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 0 -0.93000000000000016 0 ;
	setAttr ".pvt" -type "float3" -8.3977242 5.7409549 31.898014 ;
	setAttr ".rs" 67424259;
	setAttr ".ls" -type "double3" 0.66666666487438286 0.66666666487438286 0.69467934144927945 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.854255676269531 -0.24934011697769165 27.748291015625 ;
	setAttr ".cbx" -type "double3" -1.9411921501159668 11.731249809265137 36.047737121582031 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 81 ".tk";
	setAttr ".tk[54]" -type "float3" 0 -3.5762787e-06 0 ;
	setAttr ".tk[56]" -type "float3" 0 9.5367432e-07 0 ;
	setAttr ".tk[58]" -type "float3" 0 4.529953e-06 0 ;
	setAttr ".tk[96]" -type "float3" 0 2.0980835e-05 0 ;
	setAttr ".tk[97]" -type "float3" 0 2.0980835e-05 0 ;
	setAttr ".tk[98]" -type "float3" 0 -1.9073486e-06 0 ;
	setAttr ".tk[99]" -type "float3" 0 -1.9073486e-06 0 ;
	setAttr ".tk[100]" -type "float3" 0 -2.6702881e-05 0 ;
	setAttr ".tk[101]" -type "float3" 0 -2.6702881e-05 0 ;
	setAttr ".tk[204]" -type "float3" 0 12.691873 0 ;
	setAttr ".tk[205]" -type "float3" 0 12.691873 0 ;
	setAttr ".tk[206]" -type "float3" 0 12.591642 0 ;
	setAttr ".tk[207]" -type "float3" 0 12.591679 0 ;
	setAttr ".tk[208]" -type "float3" 0 12.424692 0 ;
	setAttr ".tk[209]" -type "float3" 0 12.424676 0 ;
	setAttr ".tk[210]" -type "float3" 0 12.191031 0 ;
	setAttr ".tk[211]" -type "float3" 0 12.191035 0 ;
	setAttr ".tk[212]" -type "float3" 0 11.988696 0 ;
	setAttr ".tk[213]" -type "float3" 0 11.988695 0 ;
	setAttr ".tk[214]" -type "float3" 0 11.805904 0 ;
	setAttr ".tk[215]" -type "float3" 0 11.805904 0 ;
	setAttr ".tk[216]" -type "float3" 0 11.637932 0 ;
	setAttr ".tk[217]" -type "float3" 0 11.637932 0 ;
	setAttr ".tk[218]" -type "float3" 0 11.478164 0 ;
	setAttr ".tk[219]" -type "float3" 0 11.478164 0 ;
	setAttr ".tk[220]" -type "float3" 0 11.320489 0 ;
	setAttr ".tk[221]" -type "float3" 0 11.320489 0 ;
	setAttr ".tk[222]" -type "float3" 0 11.158667 0 ;
	setAttr ".tk[223]" -type "float3" 0 11.158667 0 ;
	setAttr ".tk[224]" -type "float3" 0 10.986485 0 ;
	setAttr ".tk[225]" -type "float3" 0 10.986485 0 ;
	setAttr ".tk[226]" -type "float3" 0 10.797727 0 ;
	setAttr ".tk[227]" -type "float3" 0 10.797727 0 ;
	setAttr ".tk[228]" -type "float3" 0 10.586177 0 ;
	setAttr ".tk[229]" -type "float3" 0 10.586177 0 ;
	setAttr ".tk[230]" -type "float3" 0 10.345618 0 ;
	setAttr ".tk[231]" -type "float3" 0 10.345618 0 ;
	setAttr ".tk[232]" -type "float3" 0 10.069833 0 ;
	setAttr ".tk[233]" -type "float3" 0 10.069833 0 ;
	setAttr ".tk[234]" -type "float3" 0 9.7526207 0 ;
	setAttr ".tk[235]" -type "float3" 0 9.7526207 0 ;
	setAttr ".tk[236]" -type "float3" 0 9.3877039 0 ;
	setAttr ".tk[237]" -type "float3" 0 9.3877039 0 ;
	setAttr ".tk[238]" -type "float3" 0 8.9690895 0 ;
	setAttr ".tk[239]" -type "float3" 0 8.9690895 0 ;
	setAttr ".tk[240]" -type "float3" 0 8.4897451 0 ;
	setAttr ".tk[241]" -type "float3" 0 8.4897451 0 ;
	setAttr ".tk[242]" -type "float3" 0 7.9464889 0 ;
	setAttr ".tk[243]" -type "float3" 0 7.9464889 0 ;
	setAttr ".tk[244]" -type "float3" 0 7.3217802 0 ;
	setAttr ".tk[245]" -type "float3" 0 7.3217802 0 ;
	setAttr ".tk[246]" -type "float3" 0 6.651679 0 ;
	setAttr ".tk[247]" -type "float3" 0 6.651679 0 ;
	setAttr ".tk[248]" -type "float3" 0 5.9788399 0 ;
	setAttr ".tk[249]" -type "float3" 0 5.9788399 0 ;
	setAttr ".tk[250]" -type "float3" 0 5.2923021 0 ;
	setAttr ".tk[251]" -type "float3" 0 5.2923021 0 ;
	setAttr ".tk[252]" -type "float3" 0 4.5954666 0 ;
	setAttr ".tk[253]" -type "float3" 0 4.5954666 0 ;
	setAttr ".tk[254]" -type "float3" 0 3.8878927 0 ;
	setAttr ".tk[255]" -type "float3" 0 3.8878927 0 ;
	setAttr ".tk[256]" -type "float3" 0 3.1701593 0 ;
	setAttr ".tk[257]" -type "float3" 0 3.1701593 0 ;
	setAttr ".tk[258]" -type "float3" 0 2.4425852 0 ;
	setAttr ".tk[259]" -type "float3" 0 2.4425852 0 ;
	setAttr ".tk[260]" -type "float3" 0 1.7055507 0 ;
	setAttr ".tk[261]" -type "float3" 0 1.7055507 0 ;
	setAttr ".tk[262]" -type "float3" 0 0.95941442 0 ;
	setAttr ".tk[263]" -type "float3" 0 0.95941442 0 ;
	setAttr ".tk[264]" -type "float3" 0 -7.6293945e-06 0 ;
	setAttr ".tk[265]" -type "float3" 0 -7.6293945e-06 0 ;
	setAttr ".tk[266]" -type "float3" 0 -7.1525574e-06 0 ;
	setAttr ".tk[267]" -type "float3" 0 -7.1525574e-06 0 ;
	setAttr ".tk[268]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[269]" -type "float3" 0 -4.7683716e-07 0 ;
	setAttr ".tk[300]" -type "float3" 0 9.5367432e-06 0 ;
	setAttr ".tk[301]" -type "float3" 0 9.5367432e-06 0 ;
	setAttr ".tk[302]" -type "float3" 0 -2.3841858e-06 0 ;
	setAttr ".tk[303]" -type "float3" 0 -2.3841858e-06 0 ;
	setAttr ".tk[304]" -type "float3" 0 7.6293945e-06 0 ;
	setAttr ".tk[305]" -type "float3" 0 7.6293945e-06 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[259:260]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 0.75 1 0.51 ;
	setAttr ".pvt" -type "float3" -8.1949663 4.2666769 31.861591 ;
	setAttr ".rs" 955495909;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -12.736377716064453 -0.21113097667694092 28.134765625 ;
	setAttr ".cbx" -type "double3" -3.6535549163818359 8.7444849014282227 35.588417053222656 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 2 "f[28]" "f[259:260]";
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 1 "vtx[421:422]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.9655;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[420]" "vtx[422]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.9655;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[418:419]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.9655;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 1 "vtx[416:417]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".d" 0.9655;
	setAttr ".am" yes;
createNode polyNormal -n "polyNormal3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[205]" -type "float2" 1 -1 ;
	setAttr ".uvtk[406]" -type "float2" -98 0 ;
	setAttr ".uvtk[407]" -type "float2" -99 1 ;
	setAttr -s 1670 ".nuv";
	setAttr ".nuv[0:124]"  0 205 0 0 0 207 1 0 0 206
		 1 1 0 204 0 1 1 207 0 0 1 209 1 0 1 208 1 1 1 
		206 0 1 2 209 0 0 2 211 1 0 2 210 1 1 2 208 0 1 
		3 211 0 0 3 213 1 0 3 212 1 1 3 210 0 1 4 213
		 0 0 4 215 1 0 4 214 1 1 4 212 0 1 5 215 0 0 5 
		217 1 0 5 216 1 1 5 214 0 1 6 217 0 0 6 219 1 0 
		6 218 1 1 6 216 0 1 7 219 0 0 7 221 1 0 7 220
		 1 1 7 218 0 1 8 221 0 0 8 223 1 0 8 222 1 1 8 
		220 0 1 9 223 0 0 9 225 1 0 9 224 1 1 9 222 0 1 
		10 225 0 0 10 227 1 0 10 226 1 1 10 224 0 1 11 227
		 0 0 11 229 1 0 11 228 1 1 11 226 0 1 12 229 0 0 12 
		231 1 0 12 230 1 1 12 228 0 1 13 231 0 0 13 233 1 0 
		13 232 1 1 13 230 0 1 14 233 0 0 14 235 1 0 14 234
		 1 1 14 232 0 1 15 235 0 0 15 237 1 0 15 236 1 1 15 
		234 0 1 16 237 0 0 16 239 1 0 16 238 1 1 16 236 0 1 
		17 239 0 0 17 241 1 0 17 240 1 1 17 238 0 1 18 241
		 0 0 18 243 1 0 18 242 1 1 18 240 0 1 19 243 0 0 19 
		245 1 0 19 244 1 1 19 242 0 1 20 245 0 0 20 247 1 0 
		20 246 1 1 20 244 0 1 21 247 0 0 21 249 1 0 21 248
		 1 1 21 246 0 1 22 249 0 0 22 251 1 0 22 250 1 1 22 
		248 0 1 23 251 0 0 23 253 1 0 23 252 1 1 23 250 0 1 
		24 253 0 0 24 255 1 0 24 254 1 1 24 252 0 1 25 255
		 0 0 25 257 1 0 25 256 1 1 25 254 0 1 26 257 0 0 26 
		259 1 0 26 258 1 1 26 256 0 1 27 259 0 0 27 261 1 0 
		27 260 1 1 27 258 0 1 28 263 0 0 28 265 1 0 28 264
		 1 1 28 262 0 1 29 265 0 0 29 267 1 0 29 266 1 1 29 
		264 0 1 30 267 0 0 30 269 1 0 30 268 1 1 30 266 0 1 
		31 269 0 0;
	setAttr ".nuv[125:249]" 31 271 1 0 31 270 1 1 31 268 0
		 1 32 271 0 0 32 273 1 0 32 272 1 1 32 270 0 1 33 
		273 0 0 33 275 1 0 33 274 1 1 33 272 0 1 34 275 0 0 
		34 277 1 0 34 276 1 1 34 274 0 1 35 277 0 0 35 279
		 1 0 35 278 1 1 35 276 0 1 36 279 0 0 36 281 1 0 36 
		280 1 1 36 278 0 1 37 281 0 0 37 283 1 0 37 282 1 1 
		37 280 0 1 38 283 0 0 38 285 1 0 38 284 1 1 38 282
		 0 1 39 285 0 0 39 287 1 0 39 286 1 1 39 284 0 1 40 
		287 0 0 40 289 1 0 40 288 1 1 40 286 0 1 41 289 0 0 
		41 291 1 0 41 290 1 1 41 288 0 1 42 291 0 0 42 293
		 1 0 42 292 1 1 42 290 0 1 43 293 0 0 43 295 1 0 43 
		294 1 1 43 292 0 1 44 295 0 0 44 297 1 0 44 296 1 1 
		44 294 0 1 45 297 0 0 45 299 1 0 45 298 1 1 45 296
		 0 1 46 299 0 0 46 301 1 0 46 300 1 1 46 298 0 1 47 
		301 0 0 47 303 1 0 47 302 1 1 47 300 0 1 48 303 0 0 
		48 305 1 0 48 304 1 1 48 302 0 1 49 305 0 0 49 307
		 1 0 49 306 1 1 49 304 0 1 50 307 0 0 50 309 1 0 50 
		308 1 1 50 306 0 1 51 309 0 0 51 311 1 0 51 310 1 1 
		51 308 0 1 52 311 0 0 52 313 1 0 52 312 1 1 52 310
		 0 1 53 313 0 0 53 315 1 0 53 314 1 1 53 312 0 1 54 
		315 0 0 54 317 1 0 54 316 1 1 54 314 0 1 55 317 0 0 
		55 319 1 0 55 318 1 1 55 316 0 1 56 319 0 0 56 321
		 1 0 56 320 1 1 56 318 0 1 57 321 0 0 57 323 1 0 57 
		322 1 1 57 320 0 1 58 323 0 0 58 325 1 0 58 324 1 1 
		58 322 0 1 59 325 0 0 59 327 1 0 59 326 1 1 59 324
		 0 1 60 327 0 0 60 329 1 0 60 328 1 1 60 326 0 1 61 
		329 0 0 61 331 1 0 61 330 1 1 61 328 0 1 62 331 0 0 
		62 333 1 0;
	setAttr ".nuv[250:374]" 62 332 1 1 62 330 0 1 63 333 0
		 0 63 335 1 0 63 334 1 1 63 332 0 1 64 335 0 0 64 
		337 1 0 64 336 1 1 64 334 0 1 65 337 0 0 65 339 1 0 
		65 338 1 1 65 336 0 1 66 339 0 0 66 341 1 0 66 340
		 1 1 66 338 0 1 67 341 0 0 67 343 1 0 67 342 1 1 67 
		340 0 1 68 343 0 0 68 345 1 0 68 344 1 1 68 342 0 1 
		69 345 0 0 69 347 1 0 69 346 1 1 69 344 0 1 70 347
		 0 0 70 349 1 0 70 348 1 1 70 346 0 1 71 349 0 0 71 
		351 1 0 71 350 1 1 71 348 0 1 72 351 0 0 72 353 1 0 
		72 352 1 1 72 350 0 1 73 353 0 0 73 355 1 0 73 354
		 1 1 73 352 0 1 74 355 0 0 74 357 1 0 74 356 1 1 74 
		354 0 1 75 357 0 0 75 359 1 0 75 358 1 1 75 356 0 1 
		76 359 0 0 76 361 1 0 76 360 1 1 76 358 0 1 77 361
		 0 0 77 363 1 0 77 362 1 1 77 360 0 1 78 363 0 0 78 
		365 1 0 78 364 1 1 78 362 0 1 79 365 0 0 79 367 1 0 
		79 366 1 1 79 364 0 1 80 367 0 0 80 369 1 0 80 368
		 1 1 80 366 0 1 81 369 0 0 81 371 1 0 81 370 1 1 81 
		368 0 1 82 371 0 0 82 373 1 0 82 372 1 1 82 370 0 1 
		83 373 0 0 83 375 1 0 83 374 1 1 83 372 0 1 84 375
		 0 0 84 377 1 0 84 376 1 1 84 374 0 1 85 377 0 0 85 
		379 1 0 85 378 1 1 85 376 0 1 86 379 0 0 86 381 1 0 
		86 380 1 1 86 378 0 1 87 381 0 0 87 383 1 0 87 382
		 1 1 87 380 0 1 88 383 0 0 88 385 1 0 88 384 1 1 88 
		382 0 1 89 385 0 0 89 387 1 0 89 386 1 1 89 384 0 1 
		90 387 0 0 90 389 1 0 90 388 1 1 90 386 0 1 91 389
		 0 0 91 391 1 0 91 390 1 1 91 388 0 1 92 391 0 0 92 
		393 1 0 92 392 1 1 92 390 0 1 93 393 0 0 93 395 1 0 
		93 394 1 1;
	setAttr ".nuv[375:499]" 93 392 0 1 94 395 0 0 94 397 1
		 0 94 396 1 1 94 394 0 1 95 397 0 0 95 399 1 0 95 
		398 1 1 95 396 0 1 96 399 0 0 96 401 1 0 96 400 1 1 
		96 398 0 1 97 401 0 0 97 403 1 0 97 402 1 1 97 400
		 0 1 98 403 0 0 98 405 1 0 98 404 1 1 98 402 0 1 99 
		405 0 0 99 407 1 0 99 406 1 1 99 404 0 1 100 3 1 1 
		100 2 0 1 101 2 0 0 101 3 1 0 101 5 1 1 101 4
		 0 1 102 4 0 0 102 5 1 0 102 7 1 1 102 6 0 1 103 
		6 0 0 103 7 1 0 103 9 1 1 103 8 0 1 104 8 0 0 
		104 9 1 0 104 11 1 1 104 10 0 1 105 10 0 0 105 11
		 1 0 105 13 1 1 105 12 0 1 106 12 0 0 106 13 1 0 106 
		15 1 1 106 14 0 1 107 14 0 0 107 15 1 0 107 17 1 1 
		107 16 0 1 108 16 0 0 108 17 1 0 108 19 1 1 108 18
		 0 1 109 18 0 0 109 19 1 0 109 21 1 1 109 20 0 1 110 
		20 0 0 110 21 1 0 110 23 1 1 110 22 0 1 111 22 0 0 
		111 23 1 0 111 25 1 1 111 24 0 1 112 24 0 0 112 25
		 1 0 112 27 1 1 112 26 0 1 113 26 0 0 113 27 1 0 113 
		29 1 1 113 28 0 1 114 28 0 0 114 29 1 0 114 31 1 1 
		114 30 0 1 115 30 0 0 115 31 1 0 115 33 1 1 115 32
		 0 1 116 32 0 0 116 33 1 0 116 35 1 1 116 34 0 1 117 
		34 0 0 117 35 1 0 117 37 1 1 117 36 0 1 118 36 0 0 
		118 37 1 0 118 39 1 1 118 38 0 1 119 38 0 0 119 39
		 1 0 119 41 1 1 119 40 0 1 120 40 0 0 120 41 1 0 120 
		43 1 1 120 42 0 1 121 42 0 0 121 43 1 0 121 45 1 1 
		121 44 0 1 122 44 0 0 122 45 1 0 122 47 1 1 122 46
		 0 1 123 46 0 0 123 47 1 0 123 49 1 1 123 48 0 1 124 
		48 0 0 124 49 1 0 124 51 1 1 124 50 0 1 125 50 0 0 
		125 51 1 0;
	setAttr ".nuv[500:624]" 125 53 1 1 125 52 0 1 126 52 0
		 0 126 53 1 0 126 55 1 1 126 54 0 1 127 54 0 0 127 
		55 1 0 127 57 1 1 127 56 0 1 128 56 0 0 128 57 1 0 
		128 59 1 1 128 58 0 1 129 58 0 0 129 59 1 0 129 61
		 1 1 129 60 0 1 130 60 0 0 130 61 1 0 130 63 1 1 130 
		62 0 1 131 62 0 0 131 63 1 0 131 65 1 1 131 64 0 1 
		132 64 0 0 132 65 1 0 132 67 1 1 132 66 0 1 133 66
		 0 0 133 67 1 0 133 69 1 1 133 68 0 1 134 68 0 0 134 
		69 1 0 134 71 1 1 134 70 0 1 135 70 0 0 135 71 1 0 
		135 73 1 1 135 72 0 1 136 72 0 0 136 73 1 0 136 75
		 1 1 136 74 0 1 137 74 0 0 137 75 1 0 137 77 1 1 137 
		76 0 1 138 76 0 0 138 77 1 0 138 79 1 1 138 78 0 1 
		139 78 0 0 139 79 1 0 139 81 1 1 139 80 0 1 140 80
		 0 0 140 81 1 0 140 83 1 1 140 82 0 1 141 82 0 0 141 
		83 1 0 141 85 1 1 141 84 0 1 142 84 0 0 142 85 1 0 
		142 87 1 1 142 86 0 1 143 86 0 0 143 87 1 0 143 89
		 1 1 143 88 0 1 144 88 0 0 144 89 1 0 144 91 1 1 144 
		90 0 1 145 90 0 0 145 91 1 0 145 93 1 1 145 92 0 1 
		146 92 0 0 146 93 1 0 146 95 1 1 146 94 0 1 147 94
		 0 0 147 95 1 0 147 97 1 1 147 96 0 1 148 96 0 0 148 
		97 1 0 148 99 1 1 148 98 0 1 149 98 0 0 149 99 1 0 
		149 101 1 1 149 100 0 1 150 100 0 0 150 101 1 0 150 103
		 1 1 150 102 0 1 151 102 0 0 151 103 1 0 151 105 1 1 151 
		104 0 1 152 104 0 0 152 105 1 0 152 107 1 1 152 106 0 1 
		153 106 0 0 153 107 1 0 153 109 1 1 153 108 0 1 154 108
		 0 0 154 109 1 0 154 111 1 1 154 110 0 1 155 110 0 0 155 
		111 1 0 155 113 1 1 155 112 0 1 156 112 0 0 156 113 1 0 
		156 115 1 1;
	setAttr ".nuv[625:749]" 156 114 0 1 157 114 0 0 157 115 1
		 0 157 117 1 1 157 116 0 1 158 116 0 0 158 117 1 0 158 
		119 1 1 158 118 0 1 159 118 0 0 159 119 1 0 159 121 1 1 
		159 120 0 1 160 120 0 0 160 121 1 0 160 123 1 1 160 122
		 0 1 161 122 0 0 161 123 1 0 161 125 1 1 161 124 0 1 162 
		124 0 0 162 125 1 0 162 127 1 1 162 126 0 1 163 126 0 0 
		163 127 1 0 163 129 1 1 163 128 0 1 164 128 0 0 164 129
		 1 0 164 131 1 1 164 130 0 1 165 130 0 0 165 131 1 0 165 
		133 1 1 165 132 0 1 166 132 0 0 166 133 1 0 166 135 1 1 
		166 134 0 1 167 134 0 0 167 135 1 0 167 137 1 1 167 136
		 0 1 168 136 0 0 168 137 1 0 168 139 1 1 168 138 0 1 169 
		138 0 0 169 139 1 0 169 141 1 1 169 140 0 1 170 140 0 0 
		170 141 1 0 170 143 1 1 170 142 0 1 171 142 0 0 171 143
		 1 0 171 145 1 1 171 144 0 1 172 144 0 0 172 145 1 0 172 
		147 1 1 172 146 0 1 173 146 0 0 173 147 1 0 173 149 1 1 
		173 148 0 1 174 148 0 0 174 149 1 0 174 151 1 1 174 150
		 0 1 175 150 0 0 175 151 1 0 175 153 1 1 175 152 0 1 176 
		152 0 0 176 153 1 0 176 155 1 1 176 154 0 1 177 154 0 0 
		177 155 1 0 177 157 1 1 177 156 0 1 178 156 0 0 178 157
		 1 0 178 159 1 1 178 158 0 1 179 158 0 0 179 159 1 0 179 
		161 1 1 179 160 0 1 180 160 0 0 180 161 1 0 180 163 1 1 
		180 162 0 1 181 162 0 0 181 163 1 0 181 165 1 1 181 164
		 0 1 182 164 0 0 182 165 1 0 182 167 1 1 182 166 0 1 183 
		166 0 0 183 167 1 0 183 169 1 1 183 168 0 1 184 168 0 0 
		184 169 1 0 184 171 1 1 184 170 0 1 185 170 0 0 185 171
		 1 0 185 173 1 1 185 172 0 1 186 172 0 0 186 173 1 0 186 
		175 1 1 186 174 0 1 187 174 0 0 187 175 1 0 187 177 1 1 
		187 176 0 1;
	setAttr ".nuv[750:874]" 188 176 0 0 188 177 1 0 188 179 1
		 1 188 178 0 1 189 178 0 0 189 179 1 0 189 181 1 1 189 
		180 0 1 190 180 0 0 190 181 1 0 190 183 1 1 190 182 0 1 
		191 182 0 0 191 183 1 0 191 185 1 1 191 184 0 1 192 184
		 0 0 192 185 1 0 192 187 1 1 192 186 0 1 193 186 0 0 193 
		187 1 0 193 189 1 1 193 188 0 1 194 188 0 0 194 189 1 0 
		194 191 1 1 194 190 0 1 195 190 0 0 195 191 1 0 195 193
		 1 1 195 192 0 1 196 192 0 0 196 193 1 0 196 195 1 1 196 
		194 0 1 197 194 0 0 197 195 1 0 197 197 1 1 197 196 0 1 
		198 196 0 0 198 197 1 0 198 199 1 1 198 198 0 1 199 198
		 0 0 199 199 1 0 199 201 1 1 199 200 0 1 200 200 0 0 200 
		201 1 0 201 0 0 0 201 205 1 0 201 204 1 1 201 1 0 1 
		202 1 0 0 202 204 1 0 202 206 1 1 202 3 0 1 203 2
		 0 0 203 207 1 0 203 205 1 1 203 0 0 1 204 3 0 0 204 
		206 1 0 204 208 1 1 204 5 0 1 205 4 0 0 205 209 1 0 
		205 207 1 1 205 2 0 1 206 5 0 0 206 208 1 0 206 210
		 1 1 206 7 0 1 207 6 0 0 207 211 1 0 207 209 1 1 207 
		4 0 1 208 7 0 0 208 210 1 0 208 212 1 1 208 9 0 1 
		209 8 0 0 209 213 1 0 209 211 1 1 209 6 0 1 210 9
		 0 0 210 212 1 0 210 214 1 1 210 11 0 1 211 10 0 0 211 
		215 1 0 211 213 1 1 211 8 0 1 212 11 0 0 212 214 1 0 
		212 216 1 1 212 13 0 1 213 12 0 0 213 217 1 0 213 215
		 1 1 213 10 0 1 214 13 0 0 214 216 1 0 214 218 1 1 214 
		15 0 1 215 14 0 0 215 219 1 0 215 217 1 1 215 12 0 1 
		216 15 0 0 216 218 1 0 216 220 1 1 216 17 0 1 217 16
		 0 0 217 221 1 0 217 219 1 1 217 14 0 1 218 17 0 0 218 
		220 1 0 218 222 1 1 218 19 0 1 219 18 0 0 219 223 1 0 
		219 221 1 1;
	setAttr ".nuv[875:999]" 219 16 0 1 220 19 0 0 220 222 1
		 0 220 224 1 1 220 21 0 1 221 20 0 0 221 225 1 0 221 
		223 1 1 221 18 0 1 222 21 0 0 222 224 1 0 222 226 1 1 
		222 23 0 1 223 22 0 0 223 227 1 0 223 225 1 1 223 20
		 0 1 224 23 0 0 224 226 1 0 224 228 1 1 224 25 0 1 225 
		24 0 0 225 229 1 0 225 227 1 1 225 22 0 1 226 25 0 0 
		226 228 1 0 226 230 1 1 226 27 0 1 227 26 0 0 227 231
		 1 0 227 229 1 1 227 24 0 1 228 27 0 0 228 230 1 0 228 
		232 1 1 228 29 0 1 229 28 0 0 229 233 1 0 229 231 1 1 
		229 26 0 1 230 29 0 0 230 232 1 0 230 234 1 1 230 31
		 0 1 231 30 0 0 231 235 1 0 231 233 1 1 231 28 0 1 232 
		31 0 0 232 234 1 0 232 236 1 1 232 33 0 1 233 32 0 0 
		233 237 1 0 233 235 1 1 233 30 0 1 234 33 0 0 234 236
		 1 0 234 238 1 1 234 35 0 1 235 34 0 0 235 239 1 0 235 
		237 1 1 235 32 0 1 236 35 0 0 236 238 1 0 236 240 1 1 
		236 37 0 1 237 36 0 0 237 241 1 0 237 239 1 1 237 34
		 0 1 238 37 0 0 238 240 1 0 238 242 1 1 238 39 0 1 239 
		38 0 0 239 243 1 0 239 241 1 1 239 36 0 1 240 39 0 0 
		240 242 1 0 240 244 1 1 240 41 0 1 241 40 0 0 241 245
		 1 0 241 243 1 1 241 38 0 1 242 41 0 0 242 244 1 0 242 
		246 1 1 242 43 0 1 243 42 0 0 243 247 1 0 243 245 1 1 
		243 40 0 1 244 43 0 0 244 246 1 0 244 248 1 1 244 45
		 0 1 245 44 0 0 245 249 1 0 245 247 1 1 245 42 0 1 246 
		45 0 0 246 248 1 0 246 250 1 1 246 47 0 1 247 46 0 0 
		247 251 1 0 247 249 1 1 247 44 0 1 248 47 0 0 248 250
		 1 0 248 252 1 1 248 49 0 1 249 48 0 0 249 253 1 0 249 
		251 1 1 249 46 0 1 250 49 0 0 250 252 1 0 250 254 1 1 
		250 51 0 1;
	setAttr ".nuv[1000:1124]" 251 50 0 0 251 255 1 0 251 253 1
		 1 251 48 0 1 252 51 0 0 252 254 1 0 252 256 1 1 252 
		53 0 1 253 52 0 0 253 257 1 0 253 255 1 1 253 50 0 1 
		254 53 0 0 254 256 1 0 254 258 1 1 254 55 0 1 255 54
		 0 0 255 259 1 0 255 257 1 1 255 52 0 1 256 55 0 0 256 
		258 1 0 256 260 1 1 256 57 0 1 257 56 0 0 257 261 1 0 
		257 259 1 1 257 54 0 1 258 59 0 0 258 262 1 0 258 264
		 1 1 258 61 0 1 259 60 0 0 259 265 1 0 259 263 1 1 259 
		58 0 1 260 61 0 0 260 264 1 0 260 266 1 1 260 63 0 1 
		261 62 0 0 261 267 1 0 261 265 1 1 261 60 0 1 262 63
		 0 0 262 266 1 0 262 268 1 1 262 65 0 1 263 64 0 0 263 
		269 1 0 263 267 1 1 263 62 0 1 264 65 0 0 264 268 1 0 
		264 270 1 1 264 67 0 1 265 66 0 0 265 271 1 0 265 269
		 1 1 265 64 0 1 266 67 0 0 266 270 1 0 266 272 1 1 266 
		69 0 1 267 68 0 0 267 273 1 0 267 271 1 1 267 66 0 1 
		268 69 0 0 268 272 1 0 268 274 1 1 268 71 0 1 269 70
		 0 0 269 275 1 0 269 273 1 1 269 68 0 1 270 71 0 0 270 
		274 1 0 270 276 1 1 270 73 0 1 271 72 0 0 271 277 1 0 
		271 275 1 1 271 70 0 1 272 73 0 0 272 276 1 0 272 278
		 1 1 272 75 0 1 273 74 0 0 273 279 1 0 273 277 1 1 273 
		72 0 1 274 75 0 0 274 278 1 0 274 280 1 1 274 77 0 1 
		275 76 0 0 275 281 1 0 275 279 1 1 275 74 0 1 276 77
		 0 0 276 280 1 0 276 282 1 1 276 79 0 1 277 78 0 0 277 
		283 1 0 277 281 1 1 277 76 0 1 278 79 0 0 278 282 1 0 
		278 284 1 1 278 81 0 1 279 80 0 0 279 285 1 0 279 283
		 1 1 279 78 0 1 280 81 0 0 280 284 1 0 280 286 1 1 280 
		83 0 1 281 82 0 0 281 287 1 0 281 285 1 1 281 80 0 1 
		282 83 0 0;
	setAttr ".nuv[1125:1249]" 282 286 1 0 282 288 1 1 282 85 0
		 1 283 84 0 0 283 289 1 0 283 287 1 1 283 82 0 1 284 
		85 0 0 284 288 1 0 284 290 1 1 284 87 0 1 285 86 0 0 
		285 291 1 0 285 289 1 1 285 84 0 1 286 87 0 0 286 290
		 1 0 286 292 1 1 286 89 0 1 287 88 0 0 287 293 1 0 287 
		291 1 1 287 86 0 1 288 89 0 0 288 292 1 0 288 294 1 1 
		288 91 0 1 289 90 0 0 289 295 1 0 289 293 1 1 289 88
		 0 1 290 91 0 0 290 294 1 0 290 296 1 1 290 93 0 1 291 
		92 0 0 291 297 1 0 291 295 1 1 291 90 0 1 292 93 0 0 
		292 296 1 0 292 298 1 1 292 95 0 1 293 94 0 0 293 299
		 1 0 293 297 1 1 293 92 0 1 294 95 0 0 294 298 1 0 294 
		300 1 1 294 97 0 1 295 96 0 0 295 301 1 0 295 299 1 1 
		295 94 0 1 296 97 0 0 296 300 1 0 296 302 1 1 296 99
		 0 1 297 98 0 0 297 303 1 0 297 301 1 1 297 96 0 1 298 
		99 0 0 298 302 1 0 298 304 1 1 298 101 0 1 299 100 0 0 
		299 305 1 0 299 303 1 1 299 98 0 1 300 101 0 0 300 304
		 1 0 300 306 1 1 300 103 0 1 301 102 0 0 301 307 1 0 301 
		305 1 1 301 100 0 1 302 103 0 0 302 306 1 0 302 308 1 1 
		302 105 0 1 303 104 0 0 303 309 1 0 303 307 1 1 303 102
		 0 1 304 105 0 0 304 308 1 0 304 310 1 1 304 107 0 1 305 
		106 0 0 305 311 1 0 305 309 1 1 305 104 0 1 306 107 0 0 
		306 310 1 0 306 312 1 1 306 109 0 1 307 108 0 0 307 313
		 1 0 307 311 1 1 307 106 0 1 308 109 0 0 308 312 1 0 308 
		314 1 1 308 111 0 1 309 110 0 0 309 315 1 0 309 313 1 1 
		309 108 0 1 310 111 0 0 310 314 1 0 310 316 1 1 310 113
		 0 1 311 112 0 0 311 317 1 0 311 315 1 1 311 110 0 1 312 
		113 0 0 312 316 1 0 312 318 1 1 312 115 0 1 313 114 0 0 
		313 319 1 0;
	setAttr ".nuv[1250:1374]" 313 317 1 1 313 112 0 1 314 115 0
		 0 314 318 1 0 314 320 1 1 314 117 0 1 315 116 0 0 315 
		321 1 0 315 319 1 1 315 114 0 1 316 117 0 0 316 320 1 0 
		316 322 1 1 316 119 0 1 317 118 0 0 317 323 1 0 317 321
		 1 1 317 116 0 1 318 119 0 0 318 322 1 0 318 324 1 1 318 
		121 0 1 319 120 0 0 319 325 1 0 319 323 1 1 319 118 0 1 
		320 121 0 0 320 324 1 0 320 326 1 1 320 123 0 1 321 122
		 0 0 321 327 1 0 321 325 1 1 321 120 0 1 322 123 0 0 322 
		326 1 0 322 328 1 1 322 125 0 1 323 124 0 0 323 329 1 0 
		323 327 1 1 323 122 0 1 324 125 0 0 324 328 1 0 324 330
		 1 1 324 127 0 1 325 126 0 0 325 331 1 0 325 329 1 1 325 
		124 0 1 326 127 0 0 326 330 1 0 326 332 1 1 326 129 0 1 
		327 128 0 0 327 333 1 0 327 331 1 1 327 126 0 1 328 129
		 0 0 328 332 1 0 328 334 1 1 328 131 0 1 329 130 0 0 329 
		335 1 0 329 333 1 1 329 128 0 1 330 131 0 0 330 334 1 0 
		330 336 1 1 330 133 0 1 331 132 0 0 331 337 1 0 331 335
		 1 1 331 130 0 1 332 133 0 0 332 336 1 0 332 338 1 1 332 
		135 0 1 333 134 0 0 333 339 1 0 333 337 1 1 333 132 0 1 
		334 135 0 0 334 338 1 0 334 340 1 1 334 137 0 1 335 136
		 0 0 335 341 1 0 335 339 1 1 335 134 0 1 336 137 0 0 336 
		340 1 0 336 342 1 1 336 139 0 1 337 138 0 0 337 343 1 0 
		337 341 1 1 337 136 0 1 338 139 0 0 338 342 1 0 338 344
		 1 1 338 141 0 1 339 140 0 0 339 345 1 0 339 343 1 1 339 
		138 0 1 340 141 0 0 340 344 1 0 340 346 1 1 340 143 0 1 
		341 142 0 0 341 347 1 0 341 345 1 1 341 140 0 1 342 143
		 0 0 342 346 1 0 342 348 1 1 342 145 0 1 343 144 0 0 343 
		349 1 0 343 347 1 1 343 142 0 1 344 145 0 0 344 348 1 0 
		344 350 1 1;
	setAttr ".nuv[1375:1499]" 344 147 0 1 345 146 0 0 345 351 1
		 0 345 349 1 1 345 144 0 1 346 147 0 0 346 350 1 0 346 
		352 1 1 346 149 0 1 347 148 0 0 347 353 1 0 347 351 1 1 
		347 146 0 1 348 149 0 0 348 352 1 0 348 354 1 1 348 151
		 0 1 349 150 0 0 349 355 1 0 349 353 1 1 349 148 0 1 350 
		151 0 0 350 354 1 0 350 356 1 1 350 153 0 1 351 152 0 0 
		351 357 1 0 351 355 1 1 351 150 0 1 352 153 0 0 352 356
		 1 0 352 358 1 1 352 155 0 1 353 154 0 0 353 359 1 0 353 
		357 1 1 353 152 0 1 354 155 0 0 354 358 1 0 354 360 1 1 
		354 157 0 1 355 156 0 0 355 361 1 0 355 359 1 1 355 154
		 0 1 356 157 0 0 356 360 1 0 356 362 1 1 356 159 0 1 357 
		158 0 0 357 363 1 0 357 361 1 1 357 156 0 1 358 159 0 0 
		358 362 1 0 358 364 1 1 358 161 0 1 359 160 0 0 359 365
		 1 0 359 363 1 1 359 158 0 1 360 161 0 0 360 364 1 0 360 
		366 1 1 360 163 0 1 361 162 0 0 361 367 1 0 361 365 1 1 
		361 160 0 1 362 163 0 0 362 366 1 0 362 368 1 1 362 165
		 0 1 363 164 0 0 363 369 1 0 363 367 1 1 363 162 0 1 364 
		165 0 0 364 368 1 0 364 370 1 1 364 167 0 1 365 166 0 0 
		365 371 1 0 365 369 1 1 365 164 0 1 366 167 0 0 366 370
		 1 0 366 372 1 1 366 169 0 1 367 168 0 0 367 373 1 0 367 
		371 1 1 367 166 0 1 368 169 0 0 368 372 1 0 368 374 1 1 
		368 171 0 1 369 170 0 0 369 375 1 0 369 373 1 1 369 168
		 0 1 370 171 0 0 370 374 1 0 370 376 1 1 370 173 0 1 371 
		172 0 0 371 377 1 0 371 375 1 1 371 170 0 1 372 173 0 0 
		372 376 1 0 372 378 1 1 372 175 0 1 373 174 0 0 373 379
		 1 0 373 377 1 1 373 172 0 1 374 175 0 0 374 378 1 0 374 
		380 1 1 374 177 0 1 375 176 0 0 375 381 1 0 375 379 1 1 
		375 174 0 1;
	setAttr ".nuv[1500:1624]" 376 177 0 0 376 380 1 0 376 382 1
		 1 376 179 0 1 377 178 0 0 377 383 1 0 377 381 1 1 377 
		176 0 1 378 179 0 0 378 382 1 0 378 384 1 1 378 181 0 1 
		379 180 0 0 379 385 1 0 379 383 1 1 379 178 0 1 380 181
		 0 0 380 384 1 0 380 386 1 1 380 183 0 1 381 182 0 0 381 
		387 1 0 381 385 1 1 381 180 0 1 382 183 0 0 382 386 1 0 
		382 388 1 1 382 185 0 1 383 184 0 0 383 389 1 0 383 387
		 1 1 383 182 0 1 384 185 0 0 384 388 1 0 384 390 1 1 384 
		187 0 1 385 186 0 0 385 391 1 0 385 389 1 1 385 184 0 1 
		386 187 0 0 386 390 1 0 386 392 1 1 386 189 0 1 387 188
		 0 0 387 393 1 0 387 391 1 1 387 186 0 1 388 189 0 0 388 
		392 1 0 388 394 1 1 388 191 0 1 389 190 0 0 389 395 1 0 
		389 393 1 1 389 188 0 1 390 191 0 0 390 394 1 0 390 396
		 1 1 390 193 0 1 391 192 0 0 391 397 1 0 391 395 1 1 391 
		190 0 1 392 193 0 0 392 396 1 0 392 398 1 1 392 195 0 1 
		393 194 0 0 393 399 1 0 393 397 1 1 393 192 0 1 394 195
		 0 0 394 398 1 0 394 400 1 1 394 197 0 1 395 196 0 0 395 
		401 1 0 395 399 1 1 395 194 0 1 396 197 0 0 396 400 1 0 
		396 402 1 1 396 199 0 1 397 198 0 0 397 403 1 0 397 401
		 1 1 397 196 0 1 398 199 0 0 398 402 1 0 398 404 1 1 398 
		201 0 1 399 200 0 0 399 405 1 0 399 403 1 1 399 198 0 1 
		400 201 0 0 400 404 1 0 400 406 1 1 400 203 0 1 401 203
		 0 0 401 406 1 0 401 407 1 1 401 202 0 1 402 202 0 0 402 
		407 1 0 402 405 1 1 402 200 0 1 403 261 0 0 403 408 1 0 
		403 409 1 1 403 260 0 1 404 262 0 0 404 410 1 0 404 411
		 1 1 404 263 0 1 405 57 0 0 405 413 1 0 405 412 1 1 405 
		59 0 1 406 59 0 0 406 412 1 0 406 410 1 1 406 262 0 1 
		407 260 0 0;
	setAttr ".nuv[1625:1669]" 407 409 1 0 407 413 1 1 407 57 0
		 1 408 58 0 0 408 415 1 0 408 414 1 1 408 56 0 1 409 
		56 0 0 409 414 1 0 409 408 1 1 409 261 0 1 410 263 0 0 
		410 411 1 0 410 415 1 1 410 58 0 1 411 408 0 0 411 416
		 1 0 411 409 1 1 412 410 0 0 412 417 1 0 412 411 1 1 413 
		413 0 0 413 419 1 0 413 418 1 1 413 412 0 1 414 412 0 0 
		414 418 1 0 414 417 1 1 414 410 0 1 415 409 0 0 415 416
		 1 0 415 419 1 1 415 413 0 1 416 415 0 0 416 418 1 0 416 
		419 1 1 416 414 0 1 417 414 0 0 417 419 1 0 417 416 1 1 
		417 408 0 1 418 411 0 0 418 417 1 0 418 418 1 1 418 415
		 0 1;
createNode objectSet -n "modelPanel4ViewSelectedSet";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 1\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 1\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 0\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 1\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 0\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"front\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 1\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 0\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 100 -ast 1 -aet 100 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 100;
	setAttr ".unw" 100;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 11 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyNormalizeUV2.out" "insideShape.i";
connectAttr "polySplit1.out" "outsideShape.i";
connectAttr "polyTweakUV1.out" "yurtShape.i";
connectAttr "polyTweakUV1.uvtk[0]" "yurtShape.uvst[0].uvtw";
connectAttr "polyCube2.out" "pCubeShape2.i";
connectAttr "locator2_translateX.o" "locator2.tx";
connectAttr "locator2_translateY.o" "locator2.ty";
connectAttr "locator2_translateZ.o" "locator2.tz";
connectAttr "locator2_visibility.o" "locator2.v";
connectAttr "locator2_rotateX.o" "locator2.rx";
connectAttr "locator2_rotateY.o" "locator2.ry";
connectAttr "locator2_rotateZ.o" "locator2.rz";
connectAttr "locator2_scaleX.o" "locator2.sx";
connectAttr "locator2_scaleY.o" "locator2.sy";
connectAttr "locator2_scaleZ.o" "locator2.sz";
connectAttr "locator1_rotateX.o" "locator1.rx";
connectAttr "locator1_rotateY.o" "locator1.ry";
connectAttr "locator1_rotateZ.o" "locator1.rz";
connectAttr "locator1_visibility.o" "locator1.v";
connectAttr "locator1_translateX.o" "locator1.tx";
connectAttr "locator1_translateY.o" "locator1.ty";
connectAttr "locator1_translateZ.o" "locator1.tz";
connectAttr "locator1_scaleX.o" "locator1.sx";
connectAttr "locator1_scaleY.o" "locator1.sy";
connectAttr "locator1_scaleZ.o" "locator1.sz";
connectAttr "snapshot1.out" "snapshot1Group.cr";
connectAttr "snapshot1Group.l[0]" "transform1_Shape1.cr";
connectAttr "snapshot1Group.l[1]" "transform1_Shape2.cr";
connectAttr "snapshot1Group.l[2]" "transform1_Shape3.cr";
connectAttr "snapshot1Group.l[3]" "transform1_Shape4.cr";
connectAttr "snapshot1Group.l[4]" "transform1_Shape5.cr";
connectAttr "snapshot1Group.l[5]" "transform1_Shape6.cr";
connectAttr "snapshot1Group.l[6]" "transform1_Shape7.cr";
connectAttr "snapshot1Group.l[7]" "transform1_Shape8.cr";
connectAttr "snapshot1Group.l[8]" "transform1_Shape9.cr";
connectAttr "snapshot1Group.l[9]" "transform1_Shape10.cr";
connectAttr "snapshot1Group.l[10]" "transform1_Shape11.cr";
connectAttr "snapshot1Group.l[11]" "transform1_Shape12.cr";
connectAttr "snapshot1Group.l[12]" "transform1_Shape13.cr";
connectAttr "snapshot1Group.l[13]" "transform1_Shape14.cr";
connectAttr "snapshot1Group.l[14]" "transform1_Shape15.cr";
connectAttr "snapshot1Group.l[15]" "transform1_Shape16.cr";
connectAttr "snapshot1Group.l[16]" "transform1_Shape17.cr";
connectAttr "snapshot1Group.l[17]" "transform1_Shape18.cr";
connectAttr "snapshot1Group.l[18]" "transform1_Shape19.cr";
connectAttr "snapshot1Group.l[19]" "transform1_Shape20.cr";
connectAttr "snapshot1Group.l[20]" "transform1_Shape21.cr";
connectAttr "snapshot1Group.l[21]" "transform1_Shape22.cr";
connectAttr "snapshot1Group.l[22]" "transform1_Shape23.cr";
connectAttr "snapshot1Group.l[23]" "transform1_Shape24.cr";
connectAttr "snapshot1Group.l[24]" "transform1_Shape25.cr";
connectAttr "snapshot1Group.l[25]" "transform1_Shape26.cr";
connectAttr "snapshot1Group.l[26]" "transform1_Shape27.cr";
connectAttr "snapshot1Group.l[27]" "transform1_Shape28.cr";
connectAttr "snapshot1Group.l[28]" "transform1_Shape29.cr";
connectAttr "snapshot1Group.l[29]" "transform1_Shape30.cr";
connectAttr "snapshot1Group.l[30]" "transform1_Shape31.cr";
connectAttr "snapshot1Group.l[31]" "transform1_Shape32.cr";
connectAttr "snapshot1Group.l[32]" "transform1_Shape33.cr";
connectAttr "snapshot1Group.l[33]" "transform1_Shape34.cr";
connectAttr "snapshot1Group.l[34]" "transform1_Shape35.cr";
connectAttr "snapshot1Group.l[35]" "transform1_Shape36.cr";
connectAttr "snapshot1Group.l[36]" "transform1_Shape37.cr";
connectAttr "snapshot1Group.l[37]" "transform1_Shape38.cr";
connectAttr "snapshot1Group.l[38]" "transform1_Shape39.cr";
connectAttr "snapshot1Group.l[39]" "transform1_Shape40.cr";
connectAttr "snapshot1Group.l[40]" "transform1_Shape41.cr";
connectAttr "snapshot1Group.l[41]" "transform1_Shape42.cr";
connectAttr "snapshot1Group.l[42]" "transform1_Shape43.cr";
connectAttr "snapshot1Group.l[43]" "transform1_Shape44.cr";
connectAttr "snapshot1Group.l[44]" "transform1_Shape45.cr";
connectAttr "snapshot1Group.l[45]" "transform1_Shape46.cr";
connectAttr "snapshot1Group.l[46]" "transform1_Shape47.cr";
connectAttr "snapshot1Group.l[47]" "transform1_Shape48.cr";
connectAttr "snapshot1Group.l[48]" "transform1_Shape49.cr";
connectAttr "snapshot1Group.l[49]" "transform1_Shape50.cr";
connectAttr "snapshot1Group.l[50]" "transform1_Shape51.cr";
connectAttr "snapshot1Group.l[51]" "transform1_Shape52.cr";
connectAttr "snapshot1Group.l[52]" "transform1_Shape53.cr";
connectAttr "snapshot1Group.l[53]" "transform1_Shape54.cr";
connectAttr "snapshot1Group.l[54]" "transform1_Shape55.cr";
connectAttr "snapshot1Group.l[55]" "transform1_Shape56.cr";
connectAttr "snapshot1Group.l[56]" "transform1_Shape57.cr";
connectAttr "snapshot1Group.l[57]" "transform1_Shape58.cr";
connectAttr "snapshot1Group.l[58]" "transform1_Shape59.cr";
connectAttr "snapshot1Group.l[59]" "transform1_Shape60.cr";
connectAttr "snapshot1Group.l[60]" "transform1_Shape61.cr";
connectAttr "snapshot1Group.l[61]" "transform1_Shape62.cr";
connectAttr "snapshot1Group.l[62]" "transform1_Shape63.cr";
connectAttr "snapshot1Group.l[63]" "transform1_Shape64.cr";
connectAttr "snapshot1Group.l[64]" "transform1_Shape65.cr";
connectAttr "snapshot1Group.l[65]" "transform1_Shape66.cr";
connectAttr "snapshot1Group.l[66]" "transform1_Shape67.cr";
connectAttr "snapshot1Group.l[67]" "transform1_Shape68.cr";
connectAttr "snapshot1Group.l[68]" "transform1_Shape69.cr";
connectAttr "snapshot1Group.l[69]" "transform1_Shape70.cr";
connectAttr "snapshot1Group.l[70]" "transform1_Shape71.cr";
connectAttr "snapshot1Group.l[71]" "transform1_Shape72.cr";
connectAttr "snapshot1Group.l[72]" "transform1_Shape73.cr";
connectAttr "snapshot1Group.l[73]" "transform1_Shape74.cr";
connectAttr "snapshot1Group.l[74]" "transform1_Shape75.cr";
connectAttr "snapshot1Group.l[75]" "transform1_Shape76.cr";
connectAttr "snapshot1Group.l[76]" "transform1_Shape77.cr";
connectAttr "snapshot1Group.l[77]" "transform1_Shape78.cr";
connectAttr "snapshot1Group.l[78]" "transform1_Shape79.cr";
connectAttr "snapshot1Group.l[79]" "transform1_Shape80.cr";
connectAttr "snapshot1Group.l[80]" "transform1_Shape81.cr";
connectAttr "snapshot1Group.l[81]" "transform1_Shape82.cr";
connectAttr "snapshot1Group.l[82]" "transform1_Shape83.cr";
connectAttr "snapshot1Group.l[83]" "transform1_Shape84.cr";
connectAttr "snapshot1Group.l[84]" "transform1_Shape85.cr";
connectAttr "snapshot1Group.l[85]" "transform1_Shape86.cr";
connectAttr "snapshot1Group.l[86]" "transform1_Shape87.cr";
connectAttr "snapshot1Group.l[87]" "transform1_Shape88.cr";
connectAttr "snapshot1Group.l[88]" "transform1_Shape89.cr";
connectAttr "snapshot1Group.l[89]" "transform1_Shape90.cr";
connectAttr "snapshot1Group.l[90]" "transform1_Shape91.cr";
connectAttr "snapshot1Group.l[91]" "transform1_Shape92.cr";
connectAttr "snapshot1Group.l[92]" "transform1_Shape93.cr";
connectAttr "snapshot1Group.l[93]" "transform1_Shape94.cr";
connectAttr "snapshot1Group.l[94]" "transform1_Shape95.cr";
connectAttr "snapshot1Group.l[95]" "transform1_Shape96.cr";
connectAttr "snapshot1Group.l[96]" "transform1_Shape97.cr";
connectAttr "snapshot1Group.l[97]" "transform1_Shape98.cr";
connectAttr "snapshot1Group.l[98]" "transform1_Shape99.cr";
connectAttr "snapshot1Group.l[99]" "transform1_Shape100.cr";
connectAttr "loft1.os" "loftedSurfaceShape1.cr";
connectAttr "polyExtrudeFace1.out" "nurbsToPolyShape1.i";
connectAttr "polyNormal2.out" "nurbsToPolyShape2.i";
connectAttr "polyTweakUV2.out" "nurbsToPolyShape3.i";
connectAttr "polyTweakUV2.uvtk[0]" "nurbsToPolyShape3.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "curveShape1.ws" "revolve1.ic";
connectAttr "revolve1.os" "nurbsTessellate1.is";
connectAttr "polySurfaceShape1.o" "polyNormal1.ip";
connectAttr "nurbsTessellate1.op" "polyNormalizeUV1.ip";
connectAttr "insideShape.wm" "polyNormalizeUV1.mp";
connectAttr "polyNormalizeUV1.out" "polyCylProj1.ip";
connectAttr "insideShape.wm" "polyCylProj1.mp";
connectAttr "polyCylProj1.out" "polyNormalizeUV2.ip";
connectAttr "insideShape.wm" "polyNormalizeUV2.mp";
connectAttr "polyNormal1.out" "polyCylProj2.ip";
connectAttr "outsideShape.wm" "polyCylProj2.mp";
connectAttr "polyCylProj2.out" "polyNormalizeUV3.ip";
connectAttr "outsideShape.wm" "polyNormalizeUV3.mp";
connectAttr "polyNormalizeUV3.out" "polySplit1.ip";
connectAttr "polyCube1.out" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "transformGeometry1.ig";
connectAttr "transformGeometry1.og" "polyTriangulate1.ip";
connectAttr "polyTriangulate1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyTweakUV1.ip";
connectAttr "curveShape2.ws" "snapshot1.in";
connectAttr "transform1_Shape1.ws" "loft1.ic[0]";
connectAttr "transform1_Shape2.ws" "loft1.ic[1]";
connectAttr "transform1_Shape3.ws" "loft1.ic[2]";
connectAttr "transform1_Shape4.ws" "loft1.ic[3]";
connectAttr "transform1_Shape5.ws" "loft1.ic[4]";
connectAttr "transform1_Shape6.ws" "loft1.ic[5]";
connectAttr "transform1_Shape7.ws" "loft1.ic[6]";
connectAttr "transform1_Shape8.ws" "loft1.ic[7]";
connectAttr "transform1_Shape9.ws" "loft1.ic[8]";
connectAttr "transform1_Shape10.ws" "loft1.ic[9]";
connectAttr "transform1_Shape11.ws" "loft1.ic[10]";
connectAttr "transform1_Shape12.ws" "loft1.ic[11]";
connectAttr "transform1_Shape13.ws" "loft1.ic[12]";
connectAttr "transform1_Shape14.ws" "loft1.ic[13]";
connectAttr "transform1_Shape15.ws" "loft1.ic[14]";
connectAttr "transform1_Shape16.ws" "loft1.ic[15]";
connectAttr "transform1_Shape17.ws" "loft1.ic[16]";
connectAttr "transform1_Shape18.ws" "loft1.ic[17]";
connectAttr "transform1_Shape19.ws" "loft1.ic[18]";
connectAttr "transform1_Shape20.ws" "loft1.ic[19]";
connectAttr "transform1_Shape21.ws" "loft1.ic[20]";
connectAttr "transform1_Shape22.ws" "loft1.ic[21]";
connectAttr "transform1_Shape23.ws" "loft1.ic[22]";
connectAttr "transform1_Shape24.ws" "loft1.ic[23]";
connectAttr "transform1_Shape25.ws" "loft1.ic[24]";
connectAttr "transform1_Shape26.ws" "loft1.ic[25]";
connectAttr "transform1_Shape27.ws" "loft1.ic[26]";
connectAttr "transform1_Shape28.ws" "loft1.ic[27]";
connectAttr "transform1_Shape29.ws" "loft1.ic[28]";
connectAttr "transform1_Shape30.ws" "loft1.ic[29]";
connectAttr "transform1_Shape31.ws" "loft1.ic[30]";
connectAttr "transform1_Shape32.ws" "loft1.ic[31]";
connectAttr "transform1_Shape33.ws" "loft1.ic[32]";
connectAttr "transform1_Shape34.ws" "loft1.ic[33]";
connectAttr "transform1_Shape35.ws" "loft1.ic[34]";
connectAttr "transform1_Shape36.ws" "loft1.ic[35]";
connectAttr "transform1_Shape37.ws" "loft1.ic[36]";
connectAttr "transform1_Shape38.ws" "loft1.ic[37]";
connectAttr "transform1_Shape39.ws" "loft1.ic[38]";
connectAttr "transform1_Shape40.ws" "loft1.ic[39]";
connectAttr "transform1_Shape41.ws" "loft1.ic[40]";
connectAttr "transform1_Shape42.ws" "loft1.ic[41]";
connectAttr "transform1_Shape43.ws" "loft1.ic[42]";
connectAttr "transform1_Shape44.ws" "loft1.ic[43]";
connectAttr "transform1_Shape45.ws" "loft1.ic[44]";
connectAttr "transform1_Shape46.ws" "loft1.ic[45]";
connectAttr "transform1_Shape47.ws" "loft1.ic[46]";
connectAttr "transform1_Shape48.ws" "loft1.ic[47]";
connectAttr "transform1_Shape49.ws" "loft1.ic[48]";
connectAttr "transform1_Shape50.ws" "loft1.ic[49]";
connectAttr "transform1_Shape51.ws" "loft1.ic[50]";
connectAttr "transform1_Shape52.ws" "loft1.ic[51]";
connectAttr "transform1_Shape53.ws" "loft1.ic[52]";
connectAttr "transform1_Shape54.ws" "loft1.ic[53]";
connectAttr "transform1_Shape55.ws" "loft1.ic[54]";
connectAttr "transform1_Shape56.ws" "loft1.ic[55]";
connectAttr "transform1_Shape57.ws" "loft1.ic[56]";
connectAttr "transform1_Shape58.ws" "loft1.ic[57]";
connectAttr "transform1_Shape59.ws" "loft1.ic[58]";
connectAttr "transform1_Shape60.ws" "loft1.ic[59]";
connectAttr "transform1_Shape61.ws" "loft1.ic[60]";
connectAttr "transform1_Shape62.ws" "loft1.ic[61]";
connectAttr "transform1_Shape63.ws" "loft1.ic[62]";
connectAttr "transform1_Shape64.ws" "loft1.ic[63]";
connectAttr "transform1_Shape65.ws" "loft1.ic[64]";
connectAttr "transform1_Shape66.ws" "loft1.ic[65]";
connectAttr "transform1_Shape67.ws" "loft1.ic[66]";
connectAttr "transform1_Shape68.ws" "loft1.ic[67]";
connectAttr "transform1_Shape69.ws" "loft1.ic[68]";
connectAttr "transform1_Shape70.ws" "loft1.ic[69]";
connectAttr "transform1_Shape71.ws" "loft1.ic[70]";
connectAttr "transform1_Shape72.ws" "loft1.ic[71]";
connectAttr "transform1_Shape73.ws" "loft1.ic[72]";
connectAttr "transform1_Shape74.ws" "loft1.ic[73]";
connectAttr "transform1_Shape75.ws" "loft1.ic[74]";
connectAttr "transform1_Shape76.ws" "loft1.ic[75]";
connectAttr "transform1_Shape77.ws" "loft1.ic[76]";
connectAttr "transform1_Shape78.ws" "loft1.ic[77]";
connectAttr "transform1_Shape79.ws" "loft1.ic[78]";
connectAttr "transform1_Shape80.ws" "loft1.ic[79]";
connectAttr "transform1_Shape81.ws" "loft1.ic[80]";
connectAttr "transform1_Shape82.ws" "loft1.ic[81]";
connectAttr "transform1_Shape83.ws" "loft1.ic[82]";
connectAttr "transform1_Shape84.ws" "loft1.ic[83]";
connectAttr "transform1_Shape85.ws" "loft1.ic[84]";
connectAttr "transform1_Shape86.ws" "loft1.ic[85]";
connectAttr "transform1_Shape87.ws" "loft1.ic[86]";
connectAttr "transform1_Shape88.ws" "loft1.ic[87]";
connectAttr "transform1_Shape89.ws" "loft1.ic[88]";
connectAttr "transform1_Shape90.ws" "loft1.ic[89]";
connectAttr "transform1_Shape91.ws" "loft1.ic[90]";
connectAttr "transform1_Shape92.ws" "loft1.ic[91]";
connectAttr "transform1_Shape93.ws" "loft1.ic[92]";
connectAttr "transform1_Shape94.ws" "loft1.ic[93]";
connectAttr "transform1_Shape95.ws" "loft1.ic[94]";
connectAttr "transform1_Shape96.ws" "loft1.ic[95]";
connectAttr "transform1_Shape97.ws" "loft1.ic[96]";
connectAttr "transform1_Shape98.ws" "loft1.ic[97]";
connectAttr "transform1_Shape99.ws" "loft1.ic[98]";
connectAttr "transform1_Shape100.ws" "loft1.ic[99]";
connectAttr "loftedSurfaceShape1.ws" "nurbsTessellate2.is";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "nurbsToPolyShape1.wm" "polyExtrudeFace1.mp";
connectAttr "nurbsTessellate2.op" "polyTweak1.ip";
connectAttr "loftedSurfaceShape1.ws" "nurbsTessellate3.is";
connectAttr "nurbsTessellate3.op" "polyNormal2.ip";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace2.ip";
connectAttr "nurbsToPolyShape3.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "nurbsToPolyShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "nurbsToPolyShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyMergeVert1.ip";
connectAttr "nurbsToPolyShape3.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "nurbsToPolyShape3.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "nurbsToPolyShape3.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "nurbsToPolyShape3.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert4.out" "polyNormal3.ip";
connectAttr "polyNormal3.out" "polyTweakUV2.ip";
connectAttr "nurbsToPoly3.iog" "modelPanel4ViewSelectedSet.dsm" -na;
connectAttr "insideShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "outsideShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "yurtShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "obeliskShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "loftedSurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsToPolyShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsToPolyShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsToPolyShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of babel_work.ma
