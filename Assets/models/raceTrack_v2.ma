//Maya ASCII 2014 scene
//Name: raceTrack_v2.ma
//Last modified: Tue, Nov 24, 2015 01:04:27 PM
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
	setAttr ".t" -type "double3" -6.5857438080581936 86.669923082396835 -9.4574149570996795 ;
	setAttr ".r" -type "double3" -80.738352733712304 -355.40000000004102 1.5954163707748254e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 86.92048285804384;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.3715867049554902 -0.65107357372551888 -24.940979724388185 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.21819337873125688 100.1 -0.35441971800420746 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 12.336414689707563;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
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
createNode transform -n "curve2";
	setAttr ".t" -type "double3" -1.498349184491822 0 -1.9983491844918218 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape2" -p "curve2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode transform -n "curve3";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-2.5000000000000111 0 2.0000000000000075
		-2.500000000000008 0 0.66666666666667174
		-2.5000000000000053 0 -0.6666666666666643
		-2.5000000000000022 0 -2.0000000000000004
		;
createNode nurbsCurve -n "curveShape3Original1" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original2" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original3" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original4" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original5" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original6" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original7" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape3Original8" -p "curve3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode transform -n "curve4";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-1.5000000000000067 0 -3.0000000000000115
		-0.16666666666667052 0 -3.000000000000008
		1.1666666666666659 0 -3.0000000000000044
		2.5000000000000022 0 -3.0000000000000009
		;
createNode transform -n "curve5";
	setAttr ".t" -type "double3" 2.5016508155081816 0 -1.9983491844918218 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape5" -p "curve5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve6";
createNode nurbsCurve -n "curveShape6" -p "curve6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		3.5000000000000155 0 -2.0000000000000075
		3.5000000000000111 0 -1.6666666666666716
		3.5000000000000071 0 -1.3333333333333359
		3.5000000000000031 0 -1.0000000000000002
		;
createNode transform -n "curve7";
	setAttr ".t" -type "double3" 2.5016508155081816 0 -0.99834918449182142 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape7" -p "curve7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve8";
createNode nurbsCurve -n "curveShape8" -p "curve8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		2.5000000000000111 0 0
		0.16666666666667318 0 0
		-2.1666666666666652 0 0
		-4.5000000000000036 0 0
		;
createNode transform -n "curve9";
	setAttr ".t" -type "double3" -4.4983491844918237 0 1.0016508155081789 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape9" -p "curve9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve10";
	setAttr ".t" -type "double3" -1.4983491844918193 0 2.0016508155081798 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape10" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape10Original" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode nurbsCurve -n "curveShape10Original1" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape10Original2" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape10Original3" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape10Original4" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape10Original5" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode nurbsCurve -n "curveShape10Original6" -p "curve10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".tw" yes;
createNode transform -n "curve11";
createNode nurbsCurve -n "curveShape11" -p "curve11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-5.5000000000000249 0 1.0000000000000038
		-5.5000000000000178 0 1.6666666666666692
		-5.5000000000000115 0 2.3333333333333348
		-5.5000000000000053 0 3.0000000000000009
		;
createNode transform -n "curve12";
	setAttr ".t" -type "double3" -1.4983491844918193 0 2.0016508155081798 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape12" -p "curve12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve13";
	setAttr ".t" -type "double3" -4.4983491844918237 0 3.0016508155081798 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape13" -p "curve13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve14";
	setAttr ".t" -type "double3" -4.4983491844918237 0 3.0016508155081798 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape14" -p "curve14";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve15";
createNode nurbsCurve -n "curveShape15" -p "curve15";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		-4.5000000000000195 0 4.0000000000000151
		-2.0000000000000124 0 4.0000000000000098
		0.49999999999999512 0 4.0000000000000053
		3.0000000000000027 0 4.0000000000000009
		;
createNode transform -n "curve16";
	setAttr ".t" -type "double3" 3.001650815508182 0 3.0016508155081798 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape16" -p "curve16";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve17";
	setAttr ".t" -type "double3" 3.001650815508182 0 2.0016508155081794 ;
	setAttr ".r" -type "double3" 0 -90 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape17" -p "curve17";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve18";
	setAttr ".t" -type "double3" 0.50165081550817991 0 2.0016508155081794 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape18" -p "curve18";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve19";
	setAttr ".t" -type "double3" -1.498349184491822 0 2.0016508155081794 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".rp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
	setAttr ".sp" -type "double3" -0.0016508155081794429 0 -0.0016508155081787768 ;
createNode nurbsCurve -n "curveShape19" -p "curve19";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 0 no 3
		13 0 0 0 1 2 3 4 5 6 7 8 8 8
		11
		-1.0000000000000007 0 -6.5052130349130266e-19
		-1.0001080985205231 0 -0.06537379208857387
		-0.98739938333907373 0 -0.19650658139133287
		-0.93029478844895219 0 -0.38539552089150497
		-0.83735351720271212 0 -0.55955326864064148
		-0.71216019196079217 0 -0.71216019196079239
		-0.5595532686406417 0 -0.83735351720271189
		-0.38539552089150492 0 -0.93029478844895219
		-0.19650658139133279 0 -0.98739938333907329
		-0.065373792088573857 0 -1.0001080985205224
		0 0 -1
		;
createNode transform -n "curve20";
createNode nurbsCurve -n "curveShape20" -p "curve20";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		3.0000000000000133 0 1.0000000000000038
		2.1666666666666758 0 1.0000000000000024
		1.3333333333333379 0 1.0000000000000013
		0.50000000000000044 0 1.0000000000000002
		;
createNode transform -n "curve21";
createNode nurbsCurve -n "curveShape21" -p "curve21";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		4.0000000000000178 0 3.0000000000000115
		4.0000000000000124 0 2.6666666666666745
		4.000000000000008 0 2.3333333333333375
		4.0000000000000036 0 2.0000000000000004
		;
createNode transform -n "curve10attachedCurve1";
	setAttr ".t" -type "double3" -1.49834918449182 0 1.9983491844918215 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode nurbsCurve -n "curve10attachedCurveShape1" -p "curve10attachedCurve1";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "curve22";
createNode nurbsCurve -n "curveShape22" -p "curve22";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 30 2 no 3
		35 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25
		 26 27 28 29 30 31 32
		33
		0.14430148973708987 -0.15276820967744098 -5.1394966300862164
		-1.9061474300216799 0.74416735450761529 -5.0080009771241389
		-3.8079839532792761 1.4189450862586774 -4.6149292400029687
		-8.0110166440085884 2.854630449696332 -2.3442176710020521
		-8.2372748534740605 2.8351769126450335 1.9331292739416877
		-4.6950411972246364 0.45349965505880357 2.996621240744421
		-2.6322620128061938 -0.22469822906829923 3.3869433411835326
		-0.87932244161541961 -1.016782165608471 2.8041773778884718
		-0.48025787962739375 -1.0572011973531745 1.713082300143544
		-0.11494543702285981 -0.95115058492318982 0.29998615789914823
		0.71360388306256728 -0.1677862954814559 -2.1430622198664659
		3.6137769877273689 2.9440537175017227 -2.7705216769749939
		6.1095806748648718 2.7550201428014574 -0.80803182501862059
		6.7676294432090112 0.67911502895153997 0.96307149719908014
		5.8916432604378564 -1.3038157278287483 2.7177421114241951
		4.5560527577767829 -1.7801965433211826 4.2676998636109644
		1.2820328321779784 0.16011880011217258 5.3826723741247378
		-3.4750884050337083 0.34835148102821106 5.856276944757469
		-5.8300799995985351 -0.79701453673848832 4.5221779818690822
		-7.3105414499695103 -1.7371739114233631 3.2501030144945635
		-7.3069761115569838 -1.7132657887310778 0.26357568336311976
		-6.0791042550521555 -0.84890441071708733 -0.87446861185771207
		-4.7923271477372476 0.75192038336323397 -1.124194391122753
		0.91605757244557129 2.0454192949814272 2.0749821420954682
		4.1301971632409309 -0.74014201276332015 0.27932749769821785
		5.0610298957084039 -1.8623307019392208 -2.5031029092518042
		4.4312556192073274 -1.9029124071058736 -3.9360941181923881
		3.4059834052494455 -1.2897830891955295 -4.8641598735256846
		2.0293844019476994 -0.90303419602745882 -5.1976852350311242
		0.14430148973708987 -0.15276820967744098 -5.1394966300862164
		0.14430148973708987 -0.15276820967744098 -5.1394966300862164
		-1.9061474300216799 0.74416735450761529 -5.0080009771241389
		-3.8079839532792761 1.4189450862586774 -4.6149292400029687
		;
createNode transform -n "curve23";
	setAttr ".r" -type "double3" 0 -41.844685162444577 0 ;
	setAttr ".s" -type "double3" 1.0501813080250233 1.0501813080250233 1.0501813080250233 ;
createNode nurbsCurve -n "curveShape23" -p "curve23";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 1 0 no 3
		6 0 0 0 1 1 1
		4
		0 0 -1.0000000000000036
		0 0 -0.33333333333333581
		0 0 0.33333333333333209
		0 0 1
		;
createNode transform -n "extrudedSurface1";
	setAttr ".t" -type "double3" -0.13648405145207221 -1.1941828714778993 2.2727516337632885 ;
createNode mesh -n "extrudedSurfaceShape1" -p "extrudedSurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -0.5886963 -0.63040674 -3.2865999 
		-0.35273781 -1.5580293 -1.0428427 8.5009031 -1.5743091 3.1314914 6.4861326 -2.7748454 
		0.77971083 -1.407316 -1.8954729 -1.7171191 1.0186388 -1.3873173 1.3139846 -7.8370104 
		-0.090585768 0.50702882 -10.792566 1.357905 0.62811506 -7.6933432 0.046185389 0.15861629 
		-9.2576637 -0.30398187 -2.0433297 -7.0462313 -0.40107182 -0.0090654045 -9.6010265 
		-0.71070266 2.9680438 5.3217449 0.89448315 -3.3568499 5.6989746 -0.36933538 -1.7982724 
		-1.390084 -1.6198277 -1.6231387 1.1621456 -2.0881834 -0.24113882 7.2552266 1.2058239 
		-2.7581975 5.7314315 -0.42211205 -1.4307916 8.3363848 0.21536332 0.54273766 7.036036 
		-1.1823773 -0.69281262 -7.0625334 -0.033003859 -3.0289159 -6.1055279 -1.6541034 -0.010230675 
		-9.4358463 -1.2644237 4.9074078 -8.2836571 -2.3141222 2.982594 0.87341797 -0.68609554 
		5.6219277 0.55993682 -1.5042998 2.5387931 -13.765002 0.31015444 -0.90087682 -7.456583 
		-1.7120034 -0.19271804 5.4341288 -1.9582943 -0.12127052 6.649519 -0.33050135 1.100049 
		0.34877753 0.82643592 1.2359462 -0.95635259 1.2944828 2.3804035 4.8835502 -2.8887234 
		-1.2594633 8.962018 -0.51613981 -1.7046052 5.0750256 -3.0577543 -1.302086 6.9194946 
		-0.58584911 -3.416291;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "extrudedSurface2";
	setAttr ".t" -type "double3" -0.13648405145207221 -1.1941828714778993 -26.340988402824468 ;
createNode mesh -n "extrudedSurfaceShape2" -p "extrudedSurface2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0 1 1 1 1 0.48424399
		 0 0.48424399 1 0.19331448 0 0.19331448 1 0.085332386 0 0.085332386 1 0.047939606
		 0 0.047939606 1 0.12715733 0 0.12715733 1 0.32280123 0 0.32280123 1 0.27045032 0
		 0.27045032 1 0.37303177 0 0.37303177 1 0.42898062 0 0.42898062 1 0.68799317 0 0.68799317
		 1 0.56298143 0 0.56298143 1 0.51918131 0 0.51918131 1 0.62707955 0 0.62707955 1 0.75564396
		 0 0.75564396 1 0.72339082 0 0.72339082 1 0.8032946 0 0.8032946 1 0.8963511 0 0.8963511
		 0 0 1 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 36 ".pt[0:35]" -type "float3"  -1.4071946 -0.54612219 -9.309248 
		-0.83239889 -0.73026675 -5.0411239 8.5009031 -1.5743091 3.1314914 6.4861326 -2.7748454 
		0.77971083 -8.0270348 -3.7251706 -2.6567371 -6.8294177 -3.8671358 1.3075914 -15.684847 
		0.2771534 -1.2371013 -20.23461 2.2529967 -0.36753905 -15.742354 0.66799223 -3.2973073 
		-18.829109 0.81711859 -6.7515826 -15.656102 -0.40107182 -0.0090654045 -17.511383 
		0.13023201 3.2384236 4.9040723 1.9073435 -5.2464075 5.8803997 -0.60031152 -2.1870642 
		-2.8778584 -3.2737114 -4.9460859 -0.18150318 -3.0119629 -2.2342091 10.213194 2.6265178 
		-3.7221742 8.3151054 -0.27050778 -2.256891 12.071482 1.3268048 0.4531064 9.3952198 
		-0.36344934 -0.92191017 -15.467732 -0.54446429 -4.2690005 -14.300832 -1.665141 -1.3160721 
		-18.045715 -1.2644237 4.9074078 -16.452538 -1.8137712 2.272254 0.87341797 -0.68609554 
		5.6219277 0.55993682 -1.5042998 2.5387931 -23.771111 0.15318197 -1.3377081 -17.467283 
		-1.9079891 0.031845946 4.0429859 -2.5844495 -0.27451867 6.649519 -0.33050135 1.100049 
		0.89677674 0.48137683 -0.87070382 -0.061414853 2.2364526 1.6819876 4.8835502 -2.8887234 
		-1.2594633 8.962018 -0.51613981 -1.7046052 4.3326917 -3.596967 -3.8087156 6.8860211 
		-1.2888806 -5.6070313;
	setAttr -s 36 ".vt[0:35]"  -2.021020174 0.87074983 -5.74435043 -1.74173713 0.54353225 -4.18445921
		 3.13107133 -1.10669684 5.71667433 2.38739586 -0.40792364 3.94795895 -2.032871723 -1.13507903 2.22834277
		 -0.66033733 -0.45304957 3.52458978 -7.65842295 1.90765691 -0.21213593 -8.28349686 3.60023046 0.18296854
		 -5.48029327 1.19736791 -3.046590805 -5.84360361 2.90288925 -4.026008129 -5.51135063 0.43894282 1.92302513
		 -5.45004129 1.65267503 3.5479691 2.45246124 2.056697369 -3.24982643 2.92103839 1.53727508 -1.59930134
		 -0.89952058 -1.014707208 -0.45991597 0.96630961 -0.55133373 0.2669777 6.87586498 2.57212472 -0.83723021
		 5.26664305 1.81225634 -0.13626169 6.88264561 -1.062939525 2.81708193 5.027595997 -0.69672847 2.11529088
		 -5.18156719 0.15333349 -1.87095535 -4.94318247 0.18190102 0.11739039 -5.80231524 -0.99957442 5.57517672
		 -5.13092089 -0.29366779 3.7779007 -1.35837805 -0.087983742 6.58430767 -1.43769205 0.4954564 4.59492111
		 -7.92423296 -2.18116117 0.79487658 -6.46898603 -1.10201609 1.17948663 2.60127854 0.65595943 -0.010389561
		 3.2751298 -0.17689431 1.59778976 -0.89725697 1.61629283 -0.16715062 -0.92414165 1.23036158 1.86384594
		 4.19221067 -0.9831937 -2.47481847 5.42453194 -2.48542929 -2.4853065 2.24490356 -0.35190788 -4.23994923
		 1.99539232 -1.45335555 -5.98992729;
	setAttr -s 54 ".ed[0:53]"  34 1 0 1 0 1 0 35 0 35 34 1 18 2 0 2 3 1
		 3 19 0 19 18 1 10 4 0 4 5 1 5 11 0 11 10 1 8 6 0 6 7 1 7 9 0 9 8 1 1 8 0 9 0 0 6 10 0
		 11 7 0 14 12 0 12 13 1 13 15 0 15 14 1 4 14 0 15 5 0 12 16 0 16 17 1 17 13 0 16 18 0
		 19 17 0 26 20 0 20 21 1 21 27 0 27 26 1 24 22 0 22 23 1 23 25 0 25 24 1 2 24 0 25 3 0
		 22 26 0 27 23 0 30 28 0 28 29 1 29 31 0 31 30 1 20 30 0 31 21 0 28 32 0 32 33 1 33 29 0
		 32 34 0 35 33 0;
	setAttr -s 18 -ch 72 ".fc[0:17]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 34 1 0 35
		f 4 4 5 6 7
		mu 0 4 18 2 3 19
		f 4 8 9 10 11
		mu 0 4 10 4 5 11
		f 4 12 13 14 15
		mu 0 4 8 6 7 9
		f 4 -2 16 -16 17
		mu 0 4 36 37 8 9
		f 4 18 -12 19 -14
		mu 0 4 6 10 11 7
		f 4 20 21 22 23
		mu 0 4 14 12 13 15
		f 4 24 -24 25 -10
		mu 0 4 4 14 15 5
		f 4 26 27 28 -22
		mu 0 4 12 16 17 13
		f 4 29 -8 30 -28
		mu 0 4 16 18 19 17
		f 4 31 32 33 34
		mu 0 4 26 20 21 27
		f 4 35 36 37 38
		mu 0 4 24 22 23 25
		f 4 39 -39 40 -6
		mu 0 4 2 24 25 3
		f 4 41 -35 42 -37
		mu 0 4 22 26 27 23
		f 4 43 44 45 46
		mu 0 4 30 28 29 31
		f 4 47 -47 48 -33
		mu 0 4 20 30 31 21
		f 4 49 50 51 -45
		mu 0 4 28 32 33 29
		f 4 52 -4 53 -51
		mu 0 4 32 34 35 33;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode makeTwoPointCircularArc -n "makeTwoPointCircularArc1";
	setAttr ".pt1" -type "double3" -1.0000000000000009 0 0 ;
	setAttr ".pt2" -type "double3" 0 0 -1.0000000000000002 ;
	setAttr ".dv" -type "double3" 0 1 0 ;
	setAttr ".r" -0.99835054933992395;
createNode attachCurve -n "attachCurve1";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve2";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve3";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve4";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve5";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve6";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve7";
	setAttr ".rv2" yes;
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve8";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve9";
	setAttr -s 3 ".ics";
	setAttr ".rv2" yes;
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve10";
	setAttr -s 3 ".ics";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve11";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve12";
	setAttr ".rv2" yes;
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve13";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve14";
	setAttr ".rv2" yes;
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve15";
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve16";
	setAttr ".rv2" yes;
	setAttr ".kmk" no;
createNode attachCurve -n "attachCurve17";
	setAttr -s 3 ".ics";
	setAttr ".kmk" no;
createNode extrude -n "extrude1";
	setAttr ".fpt" yes;
	setAttr ".ucp" 1;
	setAttr ".upn" yes;
	setAttr ".rsp" yes;
createNode nurbsTessellate -n "nurbsTessellate1";
	setAttr ".f" 2;
	setAttr ".pt" 1;
	setAttr ".chr" 0.9145;
	setAttr ".un" 1;
	setAttr ".vt" 1;
	setAttr ".vn" 19;
	setAttr ".ucr" no;
	setAttr ".cht" 0.01;
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
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 1\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 10 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
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
connectAttr "makeTwoPointCircularArc1.oc" "curveShape2.cr";
connectAttr "attachCurve9.oc" "curveShape3.cr";
connectAttr "attachCurve1.oc" "curveShape3Original1.cr";
connectAttr "attachCurve2.oc" "curveShape3Original2.cr";
connectAttr "attachCurve3.oc" "curveShape3Original3.cr";
connectAttr "attachCurve4.oc" "curveShape3Original4.cr";
connectAttr "attachCurve5.oc" "curveShape3Original5.cr";
connectAttr "attachCurve6.oc" "curveShape3Original6.cr";
connectAttr "attachCurve7.oc" "curveShape3Original7.cr";
connectAttr "attachCurve8.oc" "curveShape3Original8.cr";
connectAttr "attachCurve16.oc" "curveShape10.cr";
connectAttr "attachCurve10.oc" "curveShape10Original1.cr";
connectAttr "attachCurve11.oc" "curveShape10Original2.cr";
connectAttr "attachCurve12.oc" "curveShape10Original3.cr";
connectAttr "attachCurve13.oc" "curveShape10Original4.cr";
connectAttr "attachCurve14.oc" "curveShape10Original5.cr";
connectAttr "attachCurve15.oc" "curveShape10Original6.cr";
connectAttr "attachCurve17.oc" "curve10attachedCurveShape1.cr";
connectAttr "nurbsTessellate1.op" "extrudedSurfaceShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "curveShape3Original.ws" "attachCurve1.ic1";
connectAttr "curveShape2.ws" "attachCurve1.ic2";
connectAttr "curveShape3Original1.ws" "attachCurve2.ic1";
connectAttr "curveShape4.ws" "attachCurve2.ic2";
connectAttr "curveShape3Original2.ws" "attachCurve3.ic1";
connectAttr "curveShape5.ws" "attachCurve3.ic2";
connectAttr "curveShape3Original3.ws" "attachCurve4.ic1";
connectAttr "curveShape6.ws" "attachCurve4.ic2";
connectAttr "curveShape3Original4.ws" "attachCurve5.ic1";
connectAttr "curveShape7.ws" "attachCurve5.ic2";
connectAttr "curveShape3Original5.ws" "attachCurve6.ic1";
connectAttr "curveShape8.ws" "attachCurve6.ic2";
connectAttr "curveShape3Original6.ws" "attachCurve7.ic1";
connectAttr "curveShape9.ws" "attachCurve7.ic2";
connectAttr "curveShape3Original7.ws" "attachCurve8.ic1";
connectAttr "curveShape11.ws" "attachCurve8.ic2";
connectAttr "curveShape3Original8.ws" "attachCurve9.ics[0]";
connectAttr "curveShape13.ws" "attachCurve9.ics[1]";
connectAttr "curveShape14.ws" "attachCurve9.ics[2]";
connectAttr "curveShape10Original.ws" "attachCurve10.ics[0]";
connectAttr "curveShape12.ws" "attachCurve10.ics[1]";
connectAttr "curveShape19.ws" "attachCurve10.ics[2]";
connectAttr "curveShape10Original1.ws" "attachCurve11.ic1";
connectAttr "curveShape18.ws" "attachCurve11.ic2";
connectAttr "curveShape10Original2.ws" "attachCurve12.ic1";
connectAttr "curveShape20.ws" "attachCurve12.ic2";
connectAttr "curveShape10Original3.ws" "attachCurve13.ic1";
connectAttr "curveShape17.ws" "attachCurve13.ic2";
connectAttr "curveShape10Original4.ws" "attachCurve14.ic1";
connectAttr "curveShape21.ws" "attachCurve14.ic2";
connectAttr "curveShape10Original5.ws" "attachCurve15.ic1";
connectAttr "curveShape16.ws" "attachCurve15.ic2";
connectAttr "curveShape10Original6.ws" "attachCurve16.ic1";
connectAttr "curveShape15.ws" "attachCurve16.ic2";
connectAttr "curveShape10.ws" "attachCurve17.ics[0]";
connectAttr "curveShape3.ws" "attachCurve17.ics[1]";
connectAttr "curveShape14.ws" "attachCurve17.ics[2]";
connectAttr "curveShape23.ws" "extrude1.pr";
connectAttr "curveShape22.ws" "extrude1.pt";
connectAttr "extrude1.os" "nurbsTessellate1.is";
connectAttr "extrudedSurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "extrudedSurfaceShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of raceTrack_v2.ma
