(* ::Package:: *)

(* ::Input:: *)
(**)


(* ::Chapter:: *)
(*Examples of bases generation*)


SetDirectory[NotebookDirectory[]]
Get["GetBases.m"]


(* ::Section:: *)
(*Massless Doublebox (Sec 5.2 of 2401.01897)*)


(* ::Subsection:: *)
(*Setup*)


(*twist*)
u0=(-847 z1 z3+847 z1 z4+121 z1^2 z4+77 z1 z2 z4-121 z1 z3 z4+121 z1 z4^2-11 z1^2 z4^2+11 z1 z2 z4^2+539 z2 z5+77 z1 z2 z5+49 z2^2 z5-154 z1 z3 z5+77 z2 z3 z5+77 z1 z4 z5+11 z1^2 z4 z5+77 z2 z4 z5-18 z1 z2 z4 z5+7 z2^2 z4 z5-11 z1 z3 z4 z5+11 z2 z3 z4 z5+49 z2 z5^2+7 z1 z2 z5^2-7 z2^2 z5^2-7 z1 z3 z5^2+7 z2 z3 z5^2+847 z3 z6-121 z1 z3 z6+77 z2 z3 z6+121 z3^2 z6-847 z4 z6-121 z1 z4 z6-154 z2 z4 z6-11 z1 z2 z4 z6-7 z2^2 z4 z6-121 z3 z4 z6+22 z1 z3 z4 z6-11 z2 z3 z4 z6+77 z2 z5 z6+11 z1 z2 z5 z6+7 z2^2 z5 z6+77 z3 z5 z6-11 z1 z3 z5 z6-18 z2 z3 z5 z6+11 z3^2 z5 z6+121 z3 z6^2+11 z2 z3 z6^2-11 z3^2 z6^2+5929 z7+847 z1 z7+539 z2 z7+847 z3 z7+847 z4 z7-275 z1 z4 z7+77 z2 z4 z7+121 z3 z4 z7+539 z5 z7+77 z1 z5 z7-203 z2 z5 z7+77 z3 z5 z7+847 z6 z7+121 z1 z6 z7+77 z2 z6 z7-275 z3 z6 z7-1386 z7^2-539 z2 z8+77 z1 z4 z8-154 z2 z4 z8+11 z1 z4^2 z8-11 z2 z4^2 z8-49 z2 z5 z8+7 z1 z4 z5 z8-7 z2 z4 z5 z8-154 z2 z6 z8+77 z3 z6 z8-154 z4 z6 z8-11 z1 z4 z6 z8+36 z2 z4 z6 z8-11 z3 z4 z6 z8-7 z2 z5 z6 z8+7 z3 z5 z6 z8-11 z2 z6^2 z8+11 z3 z6^2 z8+539 z7 z8+77 z4 z7 z8+49 z5 z7 z8+77 z6 z7 z8-7 z4 z6 z8^2-154 z1 z3 z9+77 z1 z4 z9+11 z1^2 z4 z9+7 z1 z2 z4 z9-11 z1 z3 z4 z9-539 z5 z9-154 z1 z5 z9-11 z1^2 z5 z9-49 z2 z5 z9-7 z1 z2 z5 z9-154 z3 z5 z9+36 z1 z3 z5 z9-7 z2 z3 z5 z9-11 z3^2 z5 z9+77 z3 z6 z9-11 z1 z3 z6 z9+7 z2 z3 z6 z9+11 z3^2 z6 z9+539 z7 z9+77 z1 z7 z9+49 z2 z7 z9+77 z3 z7 z9+539 z8 z9+77 z1 z8 z9-49 z2 z8 z9+77 z3 z8 z9+77 z4 z8 z9-18 z1 z4 z8 z9-7 z2 z4 z8 z9+11 z3 z4 z8 z9-49 z5 z8 z9-7 z1 z5 z8 z9+14 z2 z5 z8 z9-7 z3 z5 z8 z9+77 z6 z8 z9+11 z1 z6 z8 z9-7 z2 z6 z8 z9-18 z3 z6 z8 z9-203 z7 z8 z9+49 z8^2 z9+7 z4 z8^2 z9+7 z6 z8^2 z9-7 z1 z3 z9^2+49 z8 z9^2+7 z1 z8 z9^2+7 z3 z8 z9^2-7 z8^2 z9^2)^(13/10);


(*spanning set of cuts*)
cut1={z1:>0,z4:>0,z7:>0};
cut2={z3:>0,z6:>0,z7:>0};
cut3={z2:>0,z5:>0,z7:>0};
cut4={z1:>0,z3:>0,z4:>0,z6:>0};
cut5={z1:>0,z3:>0,z5:>0,z7:>0};
cut6={z2:>0,z4:>0,z6:>0,z7:>0};


(*usage:
The function GetBasis takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output the basis of the outer layer
*)


vars={z1,z2,z3,z4,z5,z6,z7,z8,z9};
relativevars={z1,z2,z3,z4,z5,z6,z7};
basis=GetBasis[u0,vars,relativevars]
dimensions=basis//Length


(* ::Subsection:: *)
(*Cut1*)


(*Definition*)
u=u0//.cut1//Simplify;
(*variables*)
vars={z3,z8,z2,z6,z5,z9};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut2*)


(*Definition*)
u=u0//.cut2//Simplify;
vars={z1,z8,z2,z5,z4,z9}


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut3*)


(*Definition*)
u=u0//.cut3//Simplify;
vars={z1,z8,z3,z6,z4,z9}


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut4*)


(*Definition*)
u=u0//.cut4//Simplify;
vars={z8,z2,z5,z7,z9}


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut5*)


(*Definition*)
u=u0//.cut5//Simplify;
vars={z8,z2,z4,z6,z9};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut6*)


(*Definition*)
u=u0//.cut6//Simplify;
vars={z9,z1,z3,z5,z8};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Section:: *)
(*Massless pentabox (Sec 4)*)


(* ::Subsection:: *)
(*Setup*)


twist= k (B)^(gamma)//Factor;

k=1/(\[Pi]^(9/2) Gamma[1/2 (-5+d)] Gamma[1/2 (-4+d)]) 2^(2-d) (s12^2 (s23-2 s51)^2+(s23 s34-2 s34 s45+4 s45 s51)^2+s12 (-2 s23^2 s34+8 s23 s45 s51+8 s45 (s34-2 s51) s51+4 s23 s34 (s45+s51)))^((5-d)/2) ;

B=(-4 s34^2 s45^2 z2^2+16 s34 s45^2 s51 z2 z3-16 s45^2 s51^2 z3^2-16 s34 s45 s51 z1 z10 z4+32 s45 s51^2 z1 z10 z4-16 s34 s45^2 s51 z2 z4+8 s34 s45 s51 z1 z2 z4+8 s34 s45 s51 z10 z2 z4-8 s34 s45^2 z11 z2 z4+32 s45^2 s51 z11 z2 z4+8 s34 s45^2 z2^2 z4+32 s45^2 s51^2 z3 z4-16 s45 s51^2 z1 z3 z4-16 s45 s51^2 z10 z3 z4-16 s45^2 s51 z11 z3 z4-16 s45^2 s51 z2 z3 z4-16 s45^2 s51^2 z4^2+16 s45 s51^2 z1 z4^2-4 s51^2 z1^2 z4^2+16 s45 s51^2 z10 z4^2+16 s45 s51 z1 z10 z4^2+8 s51^2 z1 z10 z4^2-4 s51^2 z10^2 z4^2+16 s45^2 s51 z11 z4^2-8 s45 s51 z1 z11 z4^2-8 s45 s51 z10 z11 z4^2-4 s45^2 z11^2 z4^2+16 s45^2 s51 z2 z4^2-8 s45 s51 z1 z2 z4^2-8 s45 s51 z10 z2 z4^2+8 s45^2 z11 z2 z4^2+16 s45 s51 z11 z2 z4^2-4 s45^2 z2^2 z4^2-4 s34^2 s45 z1 z2 z5+8 s34 s45 s51 z1 z2 z5+4 s34^2 s45 z2^2 z5+8 s34 s45 s51 z1 z3 z5-16 s45 s51^2 z1 z3 z5-16 s34 s45 s51 z2 z3 z5+16 s45 s51^2 z3^2 z5+8 s34 s45 s51 z1 z4 z5-16 s45 s51^2 z1 z4 z5-4 s34 s51 z1^2 z4 z5+8 s51^2 z1^2 z4 z5+4 s34 s51 z1 z10 z4 z5-8 s51^2 z1 z10 z4 z5-4 s34 s45 z1 z11 z4 z5+8 s45 s51 z1 z11 z4 z5+8 s34 s45 s51 z2 z4 z5+4 s34 s45 z1 z2 z4 z5+4 s34 s51 z1 z2 z4 z5+8 s45 s51 z1 z2 z4 z5-4 s34 s51 z10 z2 z4 z5+4 s34 s45 z11 z2 z4 z5-16 s45 s51 z11 z2 z4 z5-4 s34 s45 z2^2 z4 z5-16 s45 s51^2 z3 z4 z5-16 s45 s51 z1 z3 z4 z5-8 s51^2 z1 z3 z4 z5+8 s51^2 z10 z3 z4 z5+8 s45 s51 z11 z3 z4 z5+8 s45 s51 z2 z3 z4 z5-s34^2 z1^2 z5^2+4 s34 s51 z1^2 z5^2-4 s51^2 z1^2 z5^2+2 s34^2 z1 z2 z5^2-4 s34 s51 z1 z2 z5^2-s34^2 z2^2 z5^2-4 s34 s51 z1 z3 z5^2+8 s51^2 z1 z3 z5^2+4 s34 s51 z2 z3 z5^2-4 s51^2 z3^2 z5^2+8 s34 s45^2 z2^2 z6-8 s34 s45^2 z2 z3 z6-16 s45^2 s51 z2 z3 z6+16 s45^2 s51 z3^2 z6+8 s34 s45 z1 z10 z4 z6-16 s45 s51 z1 z10 z4 z6+16 s34 s45^2 z2 z4 z6-16 s45^2 s51 z2 z4 z6-8 s34 s45 z1 z2 z4 z6+8 s45 s51 z1 z2 z4 z6-8 s34 s45 z10 z2 z4 z6+8 s45 s51 z10 z2 z4 z6-8 s45^2 z11 z2 z4 z6+8 s34 s45 z2^2 z4 z6+8 s45^2 z2^2 z4 z6-16 s45^2 s51 z3 z4 z6+8 s45 s51 z1 z3 z4 z6+8 s45 s51 z10 z3 z4 z6+8 s45^2 z11 z3 z4 z6-8 s45^2 z2 z3 z4 z6-16 s45 s51 z2 z3 z4 z6+4 s34 s45 z1 z2 z5 z6-8 s45 s51 z1 z2 z5 z6-4 s34 s45 z2^2 z5 z6-4 s34 s45 z1 z3 z5 z6+8 s45 s51 z1 z3 z5 z6+4 s34 s45 z2 z3 z5 z6+8 s45 s51 z2 z3 z5 z6-8 s45 s51 z3^2 z5 z6-4 s45^2 z2^2 z6^2+8 s45^2 z2 z3 z6^2-4 s45^2 z3^2 z6^2-4 s34^2 s45 z10 z2 z7+8 s34 s45 s51 z10 z2 z7+4 s34^2 s45 z2^2 z7+8 s34 s45 s51 z10 z3 z7-16 s45 s51^2 z10 z3 z7-16 s34 s45 s51 z2 z3 z7+16 s45 s51^2 z3^2 z7+8 s34 s45 s51 z10 z4 z7-16 s45 s51^2 z10 z4 z7+4 s34 s51 z1 z10 z4 z7-8 s51^2 z1 z10 z4 z7-4 s34 s51 z10^2 z4 z7+8 s51^2 z10^2 z4 z7-4 s34 s45 z10 z11 z4 z7+8 s45 s51 z10 z11 z4 z7+8 s34 s45 s51 z2 z4 z7-4 s34 s51 z1 z2 z4 z7+4 s34 s45 z10 z2 z4 z7+4 s34 s51 z10 z2 z4 z7+8 s45 s51 z10 z2 z4 z7+4 s34 s45 z11 z2 z4 z7-16 s45 s51 z11 z2 z4 z7-4 s34 s45 z2^2 z4 z7-16 s45 s51^2 z3 z4 z7+8 s51^2 z1 z3 z4 z7-16 s45 s51 z10 z3 z4 z7-8 s51^2 z10 z3 z4 z7+8 s45 s51 z11 z3 z4 z7+8 s45 s51 z2 z3 z4 z7+2 s34^2 z1 z10 z5 z7-8 s34 s51 z1 z10 z5 z7+8 s51^2 z1 z10 z5 z7+8 s34^2 s45 z2 z5 z7-16 s34 s45 s51 z2 z5 z7-2 s34^2 z1 z2 z5 z7+4 s34 s51 z1 z2 z5 z7-2 s34^2 z10 z2 z5 z7+4 s34 s51 z10 z2 z5 z7-8 s34 s45 z11 z2 z5 z7+16 s45 s51 z11 z2 z5 z7+2 s34^2 z2^2 z5 z7+8 s34 s45 z2^2 z5 z7-16 s34 s45 s51 z3 z5 z7+32 s45 s51^2 z3 z5 z7+4 s34 s51 z1 z3 z5 z7-8 s51^2 z1 z3 z5 z7+4 s34 s51 z10 z3 z5 z7-8 s51^2 z10 z3 z5 z7+8 s34 s45 z11 z3 z5 z7-16 s45 s51 z11 z3 z5 z7-8 s34 s45 z2 z3 z5 z7-8 s34 s51 z2 z3 z5 z7-16 s45 s51 z2 z3 z5 z7+16 s45 s51 z3^2 z5 z7+8 s51^2 z3^2 z5 z7+4 s34 s45 z10 z2 z6 z7-8 s45 s51 z10 z2 z6 z7-4 s34 s45 z2^2 z6 z7-4 s34 s45 z10 z3 z6 z7+8 s45 s51 z10 z3 z6 z7+4 s34 s45 z2 z3 z6 z7+8 s45 s51 z2 z3 z6 z7-8 s45 s51 z3^2 z6 z7-s34^2 z10^2 z7^2+4 s34 s51 z10^2 z7^2-4 s51^2 z10^2 z7^2+2 s34^2 z10 z2 z7^2-4 s34 s51 z10 z2 z7^2-s34^2 z2^2 z7^2-4 s34 s51 z10 z3 z7^2+8 s51^2 z10 z3 z7^2+4 s34 s51 z2 z3 z7^2-4 s51^2 z3^2 z7^2+8 s34^2 s45^2 z2 z8-16 s34 s45^2 s51 z2 z8-16 s34 s45^2 s51 z3 z8+32 s45^2 s51^2 z3 z8-16 s34 s45^2 s51 z4 z8+32 s45^2 s51^2 z4 z8+8 s34 s45 s51 z1 z4 z8-16 s45 s51^2 z1 z4 z8+8 s34 s45 s51 z10 z4 z8-16 s45 s51^2 z10 z4 z8+8 s34 s45^2 z11 z4 z8-16 s45^2 s51 z11 z4 z8-8 s34 s45^2 z2 z4 z8-16 s34 s45 s51 z2 z4 z8-16 s45^2 s51 z2 z4 z8+32 s45^2 s51 z3 z4 z8+32 s45 s51^2 z3 z4 z8+4 s34^2 s45 z1 z5 z8-16 s34 s45 s51 z1 z5 z8+16 s45 s51^2 z1 z5 z8-4 s34^2 s45 z2 z5 z8+8 s34 s45 s51 z2 z5 z8+8 s34 s45 s51 z3 z5 z8-16 s45 s51^2 z3 z5 z8-8 s34 s45^2 z2 z6 z8+16 s45^2 s51 z2 z6 z8+8 s34 s45^2 z3 z6 z8-16 s45^2 s51 z3 z6 z8+4 s34^2 s45 z10 z7 z8-16 s34 s45 s51 z10 z7 z8+16 s45 s51^2 z10 z7 z8-4 s34^2 s45 z2 z7 z8+8 s34 s45 s51 z2 z7 z8+8 s34 s45 s51 z3 z7 z8-16 s45 s51^2 z3 z7 z8-4 s34^2 s45^2 z8^2+16 s34 s45^2 s51 z8^2-16 s45^2 s51^2 z8^2-s23^2 ((z1 z4-z11 z4-z1 z6+z3 z6+z11 z7-z3 z7)^2+s12^2 (z11^2+(z6-z8)^2-2 z11 (z6+z8))+s34^2 (z1^2+(z7-z8)^2-2 z1 (z7+z8))+2 s12 (-z11^2 (z4+z7)+z1 (-2 z3 z6+z11 (z4+z6)+(z4-z6) (z6-z8))-z3 (z6-z7) (z6-z8)+z11 (z6 z7+z3 (z6+z7)-2 z6 z8+z7 z8+z4 (z6-2 z7+z8)))-2 s34 (z1^2 (z4+z6)+2 z11 z3 z7-z11 z4 z7-z3 z6 z7+z11 z7^2+z3 z7^2+z11 z4 z8+z3 z6 z8-z11 z7 z8-z3 z7 z8-z1 (-2 z4 z6+z4 z7+z6 z7+z11 (z4+z7)+z3 (z6+z7)+z4 z8+z6 z8-2 z7 z8)-s12 (z1 (-z11+z6+z8)+(z6-z8) (-z7+z8)+z11 (z7+z8))))+8 s34^2 s45 z1 z10 z9-16 s34 s45 s51 z1 z10 z9+8 s34^2 s45^2 z2 z9-4 s34^2 s45 z1 z2 z9-4 s34^2 s45 z10 z2 z9-8 s34 s45^2 z11 z2 z9-16 s34 s45^2 s51 z3 z9+8 s34 s45 s51 z1 z3 z9+8 s34 s45 s51 z10 z3 z9+16 s34 s45^2 z11 z3 z9-16 s45^2 s51 z11 z3 z9-8 s34 s45^2 z2 z3 z9+16 s45^2 s51 z3^2 z9+16 s34 s45^2 s51 z4 z9-16 s34 s45 s51 z1 z4 z9+4 s34 s51 z1^2 z4 z9-16 s34 s45 s51 z10 z4 z9-8 s34 s45 z1 z10 z4 z9-8 s34 s51 z1 z10 z4 z9-16 s45 s51 z1 z10 z4 z9+4 s34 s51 z10^2 z4 z9-8 s34 s45^2 z11 z4 z9-16 s45^2 s51 z11 z4 z9+4 s34 s45 z1 z11 z4 z9+8 s45 s51 z1 z11 z4 z9+4 s34 s45 z10 z11 z4 z9+8 s45 s51 z10 z11 z4 z9+8 s45^2 z11^2 z4 z9-8 s34 s45^2 z2 z4 z9+4 s34 s45 z1 z2 z4 z9+4 s34 s45 z10 z2 z4 z9-8 s34 s45 z11 z2 z4 z9-8 s45^2 z11 z2 z4 z9-16 s45^2 s51 z3 z4 z9+8 s45 s51 z1 z3 z4 z9+8 s45 s51 z10 z3 z4 z9-8 s45^2 z11 z3 z4 z9-16 s45 s51 z11 z3 z4 z9+8 s45^2 z2 z3 z4 z9-4 s34^2 s45 z1 z5 z9+8 s34 s45 s51 z1 z5 z9+2 s34^2 z1^2 z5 z9-4 s34 s51 z1^2 z5 z9-2 s34^2 z1 z10 z5 z9+4 s34 s51 z1 z10 z5 z9+4 s34 s45 z1 z11 z5 z9-8 s45 s51 z1 z11 z5 z9-4 s34^2 s45 z2 z5 z9-2 s34^2 z1 z2 z5 z9-8 s34 s45 z1 z2 z5 z9+2 s34^2 z10 z2 z5 z9+4 s34 s45 z11 z2 z5 z9+8 s34 s45 s51 z3 z5 z9+4 s34 s45 z1 z3 z5 z9+4 s34 s51 z1 z3 z5 z9+8 s45 s51 z1 z3 z5 z9-4 s34 s51 z10 z3 z5 z9-8 s34 s45 z11 z3 z5 z9+8 s45 s51 z11 z3 z5 z9+4 s34 s45 z2 z3 z5 z9-8 s45 s51 z3^2 z5 z9-8 s34 s45 z1 z10 z6 z9+16 s45 s51 z1 z10 z6 z9-8 s34 s45^2 z2 z6 z9+4 s34 s45 z1 z2 z6 z9+4 s34 s45 z10 z2 z6 z9+8 s45^2 z11 z2 z6 z9-8 s34 s45^2 z3 z6 z9+32 s45^2 s51 z3 z6 z9+4 s34 s45 z1 z3 z6 z9-16 s45 s51 z1 z3 z6 z9+4 s34 s45 z10 z3 z6 z9-16 s45 s51 z10 z3 z6 z9-8 s45^2 z11 z3 z6 z9-8 s34 s45 z2 z3 z6 z9-8 s45^2 z2 z3 z6 z9+8 s45^2 z3^2 z6 z9+16 s45 s51 z3^2 z6 z9-4 s34^2 s45 z10 z7 z9+8 s34 s45 s51 z10 z7 z9-2 s34^2 z1 z10 z7 z9+4 s34 s51 z1 z10 z7 z9+2 s34^2 z10^2 z7 z9-4 s34 s51 z10^2 z7 z9+4 s34 s45 z10 z11 z7 z9-8 s45 s51 z10 z11 z7 z9-4 s34^2 s45 z2 z7 z9+2 s34^2 z1 z2 z7 z9-2 s34^2 z10 z2 z7 z9-8 s34 s45 z10 z2 z7 z9+4 s34 s45 z11 z2 z7 z9+8 s34 s45 s51 z3 z7 z9-4 s34 s51 z1 z3 z7 z9+4 s34 s45 z10 z3 z7 z9+4 s34 s51 z10 z3 z7 z9+8 s45 s51 z10 z3 z7 z9-8 s34 s45 z11 z3 z7 z9+8 s45 s51 z11 z3 z7 z9+4 s34 s45 z2 z3 z7 z9-8 s45 s51 z3^2 z7 z9+8 s34^2 s45^2 z8 z9-16 s34 s45^2 s51 z8 z9-4 s34^2 s45 z1 z8 z9+8 s34 s45 s51 z1 z8 z9-4 s34^2 s45 z10 z8 z9+8 s34 s45 s51 z10 z8 z9-8 s34 s45^2 z11 z8 z9+16 s45^2 s51 z11 z8 z9+8 s34^2 s45 z2 z8 z9+16 s34 s45^2 z2 z8 z9-8 s34 s45^2 z3 z8 z9-16 s34 s45 s51 z3 z8 z9-16 s45^2 s51 z3 z8 z9-4 s34^2 s45^2 z9^2+4 s34^2 s45 z1 z9^2-s34^2 z1^2 z9^2+4 s34^2 s45 z10 z9^2+2 s34^2 z1 z10 z9^2+8 s34 s45 z1 z10 z9^2-s34^2 z10^2 z9^2+8 s34 s45^2 z11 z9^2-4 s34 s45 z1 z11 z9^2-4 s34 s45 z10 z11 z9^2-4 s45^2 z11^2 z9^2+8 s34 s45^2 z3 z9^2-4 s34 s45 z1 z3 z9^2-4 s34 s45 z10 z3 z9^2+8 s34 s45 z11 z3 z9^2+8 s45^2 z11 z3 z9^2-4 s45^2 z3^2 z9^2-s12^2 (4 s51^2 (z10^2+(z5-z8)^2-2 z10 (z5+z8))+(z11 z5-z2 z5-z10 z6+z2 z6+z10 z9-z11 z9)^2-4 s51 (2 z11 z2 z5+z2 (z5-z6) (z5-z8)+z11 (z5-z8) (z5-z9)+z10^2 (z6+z9)-z10 (z5 z6+z2 (z5+z6)-2 z5 z8+z6 z8+z5 z9-2 z6 z9+z8 z9+z11 (z5+z9))))-2 s12 s34 ((z2 (z5-z6)+z10 (z6-z9)+z11 (-z5+z9)) (z2 (-z5+z7)+z1 (z5-z9)+z10 (-z7+z9))-2 s51 (-z2 (z5-z7) (z5-z8)-z10^2 (z7+z9)+z1 (-2 z2 z5-(z5-z8) (z5-z9)+z10 (z5+z9))+z10 (z2 (z5+z7)+z7 z8-2 z7 z9+z8 z9+z5 (z7-2 z8+z9)))+2 s45 (z2^2 z5-z10 z2 z6+z2^2 z6+2 z2 z5 z6-z2 z5 z8+z10 z6 z8-z2 z6 z8-z10 z2 z9-z2 z5 z9-z10 z6 z9-z2 z6 z9-z10 z8 z9+2 z2 z8 z9+z10 z9^2-z11 ((-2 z10+z8-z9) z9+z2 (z5+z9)+z5 (-z8+z9))-2 s51 (z2 (z5+z8)+(z5-z8) (z8-z9)+z10 (-z2+z8+z9))))+4 s12 (s51 (-2 z1 z10 z4 z5+z1 z11 z4 z5+z10 z11 z4 z5+z1 z2 z4 z5+z10 z2 z4 z5-2 z11 z2 z4 z5-z1 z11 z5^2-z1 z2 z5^2+2 z11 z2 z5^2+2 z1 z3 z5^2-z11 z3 z5^2-z2 z3 z5^2+z1 z10 z4 z6-z10^2 z4 z6-z1 z2 z4 z6+z10 z2 z4 z6+z1 z10 z5 z6+z1 z2 z5 z6-2 z10 z2 z5 z6-2 z1 z3 z5 z6+z10 z3 z5 z6+z2 z3 z5 z6+2 z10^2 z4 z7-2 z10 z11 z4 z7-2 z10 z2 z4 z7+2 z11 z2 z4 z7+z10 z11 z5 z7+z10 z2 z5 z7-2 z11 z2 z5 z7-2 z10 z3 z5 z7+z11 z3 z5 z7+z2 z3 z5 z7-z10^2 z6 z7+z10 z2 z6 z7+z10 z3 z6 z7-z2 z3 z6 z7-2 s51 (-z10^2 (z4+z7)+z1 (-2 z3 z5+z10 (z4+z5)+(z4-z5) (z5-z8))-z3 (z5-z7) (z5-z8)+z10 (z5 z7+z3 (z5+z7)-2 z5 z8+z7 z8+z4 (z5-2 z7+z8)))+z1 z10 z4 z9-z10^2 z4 z9-z1 z11 z4 z9+z10 z11 z4 z9+z1 z10 z5 z9+z1 z11 z5 z9-2 z10 z11 z5 z9-2 z1 z3 z5 z9+z10 z3 z5 z9+z11 z3 z5 z9-2 z1 z10 z6 z9+2 z10^2 z6 z9+2 z1 z3 z6 z9-2 z10 z3 z6 z9-z10^2 z7 z9+z10 z11 z7 z9+z10 z3 z7 z9-z11 z3 z7 z9)+s45 (-4 s51^2 (z10 (-z3+z4+z8)+(z4-z8) (-z5+z8)+z3 (z5+z8))+(z2 (-z5+z6)+z11 (z5-z9)+z10 (-z6+z9)) (z2 (-z4+z6)+z11 (z4-z9)+z3 (-z6+z9))+2 s51 (z2 z3 z5-2 z2 z4 z5+z2 z3 z6+z2 z4 z6+z2 z5 z6+z3 z5 z6+z2 z4 z8+z2 z5 z8-2 z3 z5 z8-2 z2 z6 z8+z3 z6 z8+z3 z5 z9-2 z3 z6 z9+z3 z8 z9+z10 (-2 z3 z6+z4 z6+z2 (z4+z6)-2 z4 z8+z6 z8-2 z3 z9+z4 z9-2 z6 z9+z8 z9+z11 (z4+z9))+z11 (-2 z4 z5-2 z2 (z4+z5)+z4 z8+z5 z8+z4 z9+z5 z9-2 z8 z9+z3 (z5+z9)))))+2 s23 (s12^2 (2 z10 z2 z6-z2 z5 z6+z10 z6^2+z2 z6^2+z2 z5 z8-z10 z6 z8-z2 z6 z8-2 s51 (z11 (z5+z8)+(z5-z8) (-z6+z8)+z10 (-z11+z6+z8))-z10 z6 z9+z10 z8 z9+z11^2 (z5+z9)-z11 (z5 z6+z2 (z5+z6)+z5 z8-2 z6 z8-2 z5 z9+z6 z9+z8 z9+z10 (z6+z9)))+s34^2 (2 z10 z2 z7-z2 z5 z7+z10 z7^2+z2 z7^2+z2 z5 z8-z10 z7 z8-z2 z7 z8-z10 z7 z9+z10 z8 z9+z1^2 (z5+z9)-z1 (z5 z7+z2 (z5+z7)+z5 z8-2 z7 z8-2 z5 z9+z7 z9+z8 z9+z10 (z7+z9))-2 s45 (z2 (z7+z8)+(z7-z8) (z8-z9)+z1 (-z2+z8+z9)))+s34 (-z1^2 z4 z5+z1 z11 z4 z5+z1 z2 z4 z5-z11 z2 z4 z5+2 z1^2 z4 z6-2 z1 z10 z4 z6-2 z1 z2 z4 z6+2 z10 z2 z4 z6-z1^2 z5 z6+z1 z2 z5 z6+z1 z3 z5 z6-z2 z3 z5 z6+z1 z10 z4 z7-2 z1 z11 z4 z7+z10 z11 z4 z7+z1 z2 z4 z7-2 z10 z2 z4 z7+z11 z2 z4 z7+z1 z11 z5 z7-2 z1 z2 z5 z7+z11 z2 z5 z7+z1 z3 z5 z7-2 z11 z3 z5 z7+z2 z3 z5 z7+z1 z10 z6 z7+z1 z2 z6 z7-2 z10 z2 z6 z7-2 z1 z3 z6 z7+z10 z3 z6 z7+z2 z3 z6 z7-z10 z11 z7^2+2 z10 z2 z7^2-z11 z2 z7^2-z10 z3 z7^2+2 z11 z3 z7^2-z2 z3 z7^2-2 s51 (z1^2 (z4+z5)+2 z10 z3 z7-z10 (z4-z7) (z7-z8)-z3 (z5-z7) (z7-z8)-z1 (-2 z4 z5+z4 z7+z5 z7+z10 (z4+z7)+z3 (z5+z7)+z4 z8+z5 z8-2 z7 z8))-z1^2 z4 z9+z1 z10 z4 z9+z1 z11 z4 z9-z10 z11 z4 z9+2 z1^2 z5 z9-2 z1 z11 z5 z9-2 z1 z3 z5 z9+2 z11 z3 z5 z9-z1^2 z6 z9+z1 z10 z6 z9+z1 z3 z6 z9-z10 z3 z6 z9-2 z1 z10 z7 z9+z1 z11 z7 z9+z10 z11 z7 z9+z1 z3 z7 z9+z10 z3 z7 z9-2 z11 z3 z7 z9+2 s45 (z11 z2 z4+z2 z3 z6-2 z2 z4 z6+z11 z2 z7-2 z11 z3 z7+z2 z3 z7+z11 z4 z7+z2 z4 z7+z2 z6 z7+z3 z6 z7-2 z11 z4 z8+z2 z4 z8+z2 z6 z8-2 z3 z6 z8+z11 z7 z8-2 z2 z7 z8+z3 z7 z8+2 s51 (z1 (-z3+z4+z8)+(z4-z8) (-z7+z8)+z3 (z7+z8))-2 z11 z3 z9+z11 z4 z9+z3 z6 z9-2 z11 z7 z9-2 z3 z7 z9+z11 z8 z9+z3 z8 z9+z1 (z3 z6-2 z4 z6-2 z2 (z4+z6)+z4 z8+z6 z8+z3 z9+z4 z9+z6 z9-2 z8 z9+z11 (z4+z9))))-2 (s51 (z1 (z4-z5)+z3 (z5-z7)+z10 (-z4+z7)) (z1 (-z4+z6)+z11 (z4-z7)+z3 (-z6+z7))+s45 (-2 s51 (z1 (-2 z11 z4+z3 (z4+z6)-(z4-z6) (z4-z8))+z11 (z3 (z4+z7)-(z4-z7) (z4-z8))+z3 (-2 z6 z7-z3 (z6+z7)+z4 (z6+z7-2 z8)+z6 z8+z7 z8))+(z1 (z4-z6)+z3 (z6-z7)+z11 (-z4+z7)) (z2 (-z4+z6)+z11 (z4-z9)+z3 (-z6+z9))))+s12 (2 s51 z1 z10 z4+2 s51 z1 z11 z4-4 s51 z10 z11 z4+2 s51 z1 z11 z5-4 s51 z1 z3 z5+2 s51 z11 z3 z5+2 s51 z1 z4 z5+2 s51 z11 z4 z5+z1 z11 z4 z5-z11^2 z4 z5-z1 z2 z4 z5+z11 z2 z4 z5+2 s51 z1 z10 z6-4 s51 z1 z3 z6+2 s51 z10 z3 z6+2 s51 z1 z4 z6+2 s51 z10 z4 z6+z1 z10 z4 z6-2 z1 z11 z4 z6+z10 z11 z4 z6+z1 z2 z4 z6-2 z10 z2 z4 z6+z11 z2 z4 z6-4 s51 z1 z5 z6+z1 z11 z5 z6+z1 z2 z5 z6-2 z11 z2 z5 z6-4 s51 z3 z5 z6-2 z1 z3 z5 z6+z11 z3 z5 z6+z2 z3 z5 z6-z1 z10 z6^2-z1 z2 z6^2+2 z10 z2 z6^2+2 z1 z3 z6^2-z10 z3 z6^2-z2 z3 z6^2-4 s51 z10 z11 z7+2 s51 z10 z3 z7+2 s51 z11 z3 z7-4 s51 z10 z4 z7-4 s51 z11 z4 z7-2 z10 z11 z4 z7+2 z11^2 z4 z7+2 z10 z2 z4 z7-2 z11 z2 z4 z7+2 s51 z11 z5 z7-z11^2 z5 z7+z11 z2 z5 z7+2 s51 z3 z5 z7+z11 z3 z5 z7-z2 z3 z5 z7+2 s51 z10 z6 z7+z10 z11 z6 z7-2 z10 z2 z6 z7+z11 z2 z6 z7+2 s51 z3 z6 z7+z10 z3 z6 z7-2 z11 z3 z6 z7+z2 z3 z6 z7-4 s51 z1 z4 z8+2 s51 z10 z4 z8+2 s51 z11 z4 z8+2 s51 z1 z5 z8-4 s51 z11 z5 z8+2 s51 z3 z5 z8+2 s51 z1 z6 z8-4 s51 z10 z6 z8+2 s51 z3 z6 z8+2 s51 z10 z7 z8+2 s51 z11 z7 z8-4 s51 z3 z7 z8-z1 z10 z4 z9+z1 z11 z4 z9+z10 z11 z4 z9-z11^2 z4 z9-2 z1 z11 z5 z9+2 z11^2 z5 z9+2 z1 z3 z5 z9-2 z11 z3 z5 z9+z1 z10 z6 z9+z1 z11 z6 z9-2 z10 z11 z6 z9-2 z1 z3 z6 z9+z10 z3 z6 z9+z11 z3 z6 z9+z10 z11 z7 z9-z11^2 z7 z9-z10 z3 z7 z9+z11 z3 z7 z9+2 s45 (-2 z2 z3 z6+z2 z4 z6-z2 z6^2-z3 z6^2-z2 z4 z8+z2 z6 z8+z3 z6 z8+2 s51 (z11 (-z3+z4+z8)+(z4-z8) (-z6+z8)+z3 (z6+z8))+z3 z6 z9-z3 z8 z9-z11^2 (z4+z9)+z11 (z4 z6+z2 (z4+z6)+z4 z8-2 z6 z8-2 z4 z9+z6 z9+z8 z9+z3 (z6+z9)))+s34 (-2 z1 z11 z5+z1 z2 z5+z11 z2 z5+z1 z10 z6+z1 z2 z6-2 z10 z2 z6+z1 z5 z6+z2 z5 z6+z10 z11 z7-2 z10 z2 z7+z11 z2 z7+z11 z5 z7+z2 z5 z7-2 z10 z6 z7-2 z2 z6 z7+z1 z5 z8+z11 z5 z8-2 z2 z5 z8-2 z1 z6 z8+z10 z6 z8+z2 z6 z8+z10 z7 z8-2 z11 z7 z8+z2 z7 z8+2 s51 (-z5 z7-4 s45 z8+z5 z8+z7 z8-z8^2+z1 (-z10+z5+z8)+z10 (z7+z8))+z1 z10 z9-2 z1 z11 z9+z10 z11 z9-2 z1 z5 z9-2 z11 z5 z9+z1 z6 z9+z10 z6 z9+z10 z7 z9+z11 z7 z9+z1 z8 z9-2 z10 z8 z9+z11 z8 z9+2 s45 (z2 (z6+z8)+(z6-z8) (z8-z9)+z11 (-z2+z8+z9))))));

gamma=1/2 (-7+d);

numpoint={ s12:>-1/3,s23:>-1/5,s34:>-1/7,s45:>-3/7,s51:>-5/7,d:>79/11};

u0=(B)^(gamma)// ReplaceRepeated[ numpoint] //Factor;

vars={z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11};

relativevars={z1,z2,z3,z4,z5,z6,z7,z8};


cut1={z1->0,z8->0,z4->0};
cut2={z3->0,z7->0,z8->0};
cut3={z2->0,z5->0,z8:>0};
cut4={z3->0,z6->0,z8->0};
cut5={z1:>0,z5:>0,z8:>0};
cut6={z2:>0,z6:>0,z8:>0};
cut7={z1:>0,z3:>0,z4:>0,z7:>0};
cut8={z1:>0,z3:>0,z4:>0,z6:>0};
cut9={z1:>0,z3:>0,z5:>0,z7:>0};
cut10={z2:>0,z4:>0,z7:>0,z8:>0};


(*usage:
The function GetBasis takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output the basis of the outer layer
*)


basis=GetBasis[u0,vars,relativevars]
dimension=basis//Length


(* ::Subsection:: *)
(*Cut 1 (184)*)


u=u0//.cut1//Factor;
vars={z7,z9,z6,z5,z2,z3,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
AbsoluteTiming[bases=GetBases[u,vars,relativevars]]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 2 (378)*)


u=u0//.cut2//Factor;
vars={z4,z9,z6,z5,z2,z1,z10,z11};



(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 3 (258)*)


u=u0//.cut3//Factor;
vars={z4,z9,z7,z6,z1,z3,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 4 (368)*)


u=u0//.cut4//Factor;
vars={z4,z9,z7,z5,z2,z1,z10,z11};



(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 5 (158) *)


(*choosing the basis*)
u=u0//.cut5//Factor;
vars={z7,z9,z4,z6,z2,z3,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 6 (268)*)


(*choosing the basis*)
u=u0//.cut6//Factor;
vars={z7,z9,z4,z5,z1,z3,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 7 (1347)*)


u=u0//.cut7//Factor;
vars={z6,z9,z5,z8,z2,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 8 (1346)*)


u=u0//.cut8//Factor;
vars={z7,z9,z5,z2,z8,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection::Closed:: *)
(*Cut 9 (1357)*)


u=u0//.cut9//Factor;
vars={z4,z9,z6,z2,z8,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]


(* ::Subsection:: *)
(*Cut 10 (2478)*)


u=u0//.cut10//Factor;
vars={z6,z9,z5,z3,z1,z10,z11};


(*usage:
The function GetBases takes as input:
- unregulated twist u 
- full list of variables 
- set of variables that appear of denominators
The function gives as output a list of bases:
- leftbases= {Basis1,...,Basisn}, where Basis1 is the basis of the outer layer
*)
bases=GetBases[u,vars,relativevars]
dimensions=bases//Map[Dimensions]

