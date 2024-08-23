(* ::Package:: *)

(*
=====================================================================
Tensor Structures of Intersection Numbers
=====================================================================
Authors: Giacomo Brunello, Vsevolod Chestnov, Pierpaolo Mastrolia.
=====================================================================

This file contains the Baikov polynomial, master integrals, and spanning cuts
for the integral decomposition done in Section 5. For each cut, we are
providing the set of variables and the bases used. For questions about the
paper or the files please ask the authors.
*)



(* ::Title:: *)
(*Massless pentabox*)


(* ::Section:: *)
(*Setup*)


twist= k (B)^(gamma);

k=1/(\[Pi]^(9/2) Gamma[1/2 (-5+d)] Gamma[1/2 (-4+d)]) 2^(2-d) (s12^2 (s23-2 s51)^2+(s23 s34-2 s34 s45+4 s45 s51)^2+s12 (-2 s23^2 s34+8 s23 s45 s51+8 s45 (s34-2 s51) s51+4 s23 s34 (s45+s51)))^((5-d)/2) ;

B=(-4 s34^2 s45^2 z2^2+16 s34 s45^2 s51 z2 z3-16 s45^2 s51^2 z3^2-16 s34 s45 s51 z1 z10 z4+32 s45 s51^2 z1 z10 z4-16 s34 s45^2 s51 z2 z4+8 s34 s45 s51 z1 z2 z4+8 s34 s45 s51 z10 z2 z4-8 s34 s45^2 z11 z2 z4+32 s45^2 s51 z11 z2 z4+8 s34 s45^2 z2^2 z4+32 s45^2 s51^2 z3 z4-16 s45 s51^2 z1 z3 z4-16 s45 s51^2 z10 z3 z4-16 s45^2 s51 z11 z3 z4-16 s45^2 s51 z2 z3 z4-16 s45^2 s51^2 z4^2+16 s45 s51^2 z1 z4^2-4 s51^2 z1^2 z4^2+16 s45 s51^2 z10 z4^2+16 s45 s51 z1 z10 z4^2+8 s51^2 z1 z10 z4^2-4 s51^2 z10^2 z4^2+16 s45^2 s51 z11 z4^2-8 s45 s51 z1 z11 z4^2-8 s45 s51 z10 z11 z4^2-4 s45^2 z11^2 z4^2+16 s45^2 s51 z2 z4^2-8 s45 s51 z1 z2 z4^2-8 s45 s51 z10 z2 z4^2+8 s45^2 z11 z2 z4^2+16 s45 s51 z11 z2 z4^2-4 s45^2 z2^2 z4^2-4 s34^2 s45 z1 z2 z5+8 s34 s45 s51 z1 z2 z5+4 s34^2 s45 z2^2 z5+8 s34 s45 s51 z1 z3 z5-16 s45 s51^2 z1 z3 z5-16 s34 s45 s51 z2 z3 z5+16 s45 s51^2 z3^2 z5+8 s34 s45 s51 z1 z4 z5-16 s45 s51^2 z1 z4 z5-4 s34 s51 z1^2 z4 z5+8 s51^2 z1^2 z4 z5+4 s34 s51 z1 z10 z4 z5-8 s51^2 z1 z10 z4 z5-4 s34 s45 z1 z11 z4 z5+8 s45 s51 z1 z11 z4 z5+8 s34 s45 s51 z2 z4 z5+4 s34 s45 z1 z2 z4 z5+4 s34 s51 z1 z2 z4 z5+8 s45 s51 z1 z2 z4 z5-4 s34 s51 z10 z2 z4 z5+4 s34 s45 z11 z2 z4 z5-16 s45 s51 z11 z2 z4 z5-4 s34 s45 z2^2 z4 z5-16 s45 s51^2 z3 z4 z5-16 s45 s51 z1 z3 z4 z5-8 s51^2 z1 z3 z4 z5+8 s51^2 z10 z3 z4 z5+8 s45 s51 z11 z3 z4 z5+8 s45 s51 z2 z3 z4 z5-s34^2 z1^2 z5^2+4 s34 s51 z1^2 z5^2-4 s51^2 z1^2 z5^2+2 s34^2 z1 z2 z5^2-4 s34 s51 z1 z2 z5^2-s34^2 z2^2 z5^2-4 s34 s51 z1 z3 z5^2+8 s51^2 z1 z3 z5^2+4 s34 s51 z2 z3 z5^2-4 s51^2 z3^2 z5^2+8 s34 s45^2 z2^2 z6-8 s34 s45^2 z2 z3 z6-16 s45^2 s51 z2 z3 z6+16 s45^2 s51 z3^2 z6+8 s34 s45 z1 z10 z4 z6-16 s45 s51 z1 z10 z4 z6+16 s34 s45^2 z2 z4 z6-16 s45^2 s51 z2 z4 z6-8 s34 s45 z1 z2 z4 z6+8 s45 s51 z1 z2 z4 z6-8 s34 s45 z10 z2 z4 z6+8 s45 s51 z10 z2 z4 z6-8 s45^2 z11 z2 z4 z6+8 s34 s45 z2^2 z4 z6+8 s45^2 z2^2 z4 z6-16 s45^2 s51 z3 z4 z6+8 s45 s51 z1 z3 z4 z6+8 s45 s51 z10 z3 z4 z6+8 s45^2 z11 z3 z4 z6-8 s45^2 z2 z3 z4 z6-16 s45 s51 z2 z3 z4 z6+4 s34 s45 z1 z2 z5 z6-8 s45 s51 z1 z2 z5 z6-4 s34 s45 z2^2 z5 z6-4 s34 s45 z1 z3 z5 z6+8 s45 s51 z1 z3 z5 z6+4 s34 s45 z2 z3 z5 z6+8 s45 s51 z2 z3 z5 z6-8 s45 s51 z3^2 z5 z6-4 s45^2 z2^2 z6^2+8 s45^2 z2 z3 z6^2-4 s45^2 z3^2 z6^2-4 s34^2 s45 z10 z2 z7+8 s34 s45 s51 z10 z2 z7+4 s34^2 s45 z2^2 z7+8 s34 s45 s51 z10 z3 z7-16 s45 s51^2 z10 z3 z7-16 s34 s45 s51 z2 z3 z7+16 s45 s51^2 z3^2 z7+8 s34 s45 s51 z10 z4 z7-16 s45 s51^2 z10 z4 z7+4 s34 s51 z1 z10 z4 z7-8 s51^2 z1 z10 z4 z7-4 s34 s51 z10^2 z4 z7+8 s51^2 z10^2 z4 z7-4 s34 s45 z10 z11 z4 z7+8 s45 s51 z10 z11 z4 z7+8 s34 s45 s51 z2 z4 z7-4 s34 s51 z1 z2 z4 z7+4 s34 s45 z10 z2 z4 z7+4 s34 s51 z10 z2 z4 z7+8 s45 s51 z10 z2 z4 z7+4 s34 s45 z11 z2 z4 z7-16 s45 s51 z11 z2 z4 z7-4 s34 s45 z2^2 z4 z7-16 s45 s51^2 z3 z4 z7+8 s51^2 z1 z3 z4 z7-16 s45 s51 z10 z3 z4 z7-8 s51^2 z10 z3 z4 z7+8 s45 s51 z11 z3 z4 z7+8 s45 s51 z2 z3 z4 z7+2 s34^2 z1 z10 z5 z7-8 s34 s51 z1 z10 z5 z7+8 s51^2 z1 z10 z5 z7+8 s34^2 s45 z2 z5 z7-16 s34 s45 s51 z2 z5 z7-2 s34^2 z1 z2 z5 z7+4 s34 s51 z1 z2 z5 z7-2 s34^2 z10 z2 z5 z7+4 s34 s51 z10 z2 z5 z7-8 s34 s45 z11 z2 z5 z7+16 s45 s51 z11 z2 z5 z7+2 s34^2 z2^2 z5 z7+8 s34 s45 z2^2 z5 z7-16 s34 s45 s51 z3 z5 z7+32 s45 s51^2 z3 z5 z7+4 s34 s51 z1 z3 z5 z7-8 s51^2 z1 z3 z5 z7+4 s34 s51 z10 z3 z5 z7-8 s51^2 z10 z3 z5 z7+8 s34 s45 z11 z3 z5 z7-16 s45 s51 z11 z3 z5 z7-8 s34 s45 z2 z3 z5 z7-8 s34 s51 z2 z3 z5 z7-16 s45 s51 z2 z3 z5 z7+16 s45 s51 z3^2 z5 z7+8 s51^2 z3^2 z5 z7+4 s34 s45 z10 z2 z6 z7-8 s45 s51 z10 z2 z6 z7-4 s34 s45 z2^2 z6 z7-4 s34 s45 z10 z3 z6 z7+8 s45 s51 z10 z3 z6 z7+4 s34 s45 z2 z3 z6 z7+8 s45 s51 z2 z3 z6 z7-8 s45 s51 z3^2 z6 z7-s34^2 z10^2 z7^2+4 s34 s51 z10^2 z7^2-4 s51^2 z10^2 z7^2+2 s34^2 z10 z2 z7^2-4 s34 s51 z10 z2 z7^2-s34^2 z2^2 z7^2-4 s34 s51 z10 z3 z7^2+8 s51^2 z10 z3 z7^2+4 s34 s51 z2 z3 z7^2-4 s51^2 z3^2 z7^2+8 s34^2 s45^2 z2 z8-16 s34 s45^2 s51 z2 z8-16 s34 s45^2 s51 z3 z8+32 s45^2 s51^2 z3 z8-16 s34 s45^2 s51 z4 z8+32 s45^2 s51^2 z4 z8+8 s34 s45 s51 z1 z4 z8-16 s45 s51^2 z1 z4 z8+8 s34 s45 s51 z10 z4 z8-16 s45 s51^2 z10 z4 z8+8 s34 s45^2 z11 z4 z8-16 s45^2 s51 z11 z4 z8-8 s34 s45^2 z2 z4 z8-16 s34 s45 s51 z2 z4 z8-16 s45^2 s51 z2 z4 z8+32 s45^2 s51 z3 z4 z8+32 s45 s51^2 z3 z4 z8+4 s34^2 s45 z1 z5 z8-16 s34 s45 s51 z1 z5 z8+16 s45 s51^2 z1 z5 z8-4 s34^2 s45 z2 z5 z8+8 s34 s45 s51 z2 z5 z8+8 s34 s45 s51 z3 z5 z8-16 s45 s51^2 z3 z5 z8-8 s34 s45^2 z2 z6 z8+16 s45^2 s51 z2 z6 z8+8 s34 s45^2 z3 z6 z8-16 s45^2 s51 z3 z6 z8+4 s34^2 s45 z10 z7 z8-16 s34 s45 s51 z10 z7 z8+16 s45 s51^2 z10 z7 z8-4 s34^2 s45 z2 z7 z8+8 s34 s45 s51 z2 z7 z8+8 s34 s45 s51 z3 z7 z8-16 s45 s51^2 z3 z7 z8-4 s34^2 s45^2 z8^2+16 s34 s45^2 s51 z8^2-16 s45^2 s51^2 z8^2-s23^2 ((z1 z4-z11 z4-z1 z6+z3 z6+z11 z7-z3 z7)^2+s12^2 (z11^2+(z6-z8)^2-2 z11 (z6+z8))+s34^2 (z1^2+(z7-z8)^2-2 z1 (z7+z8))+2 s12 (-z11^2 (z4+z7)+z1 (-2 z3 z6+z11 (z4+z6)+(z4-z6) (z6-z8))-z3 (z6-z7) (z6-z8)+z11 (z6 z7+z3 (z6+z7)-2 z6 z8+z7 z8+z4 (z6-2 z7+z8)))-2 s34 (z1^2 (z4+z6)+2 z11 z3 z7-z11 z4 z7-z3 z6 z7+z11 z7^2+z3 z7^2+z11 z4 z8+z3 z6 z8-z11 z7 z8-z3 z7 z8-z1 (-2 z4 z6+z4 z7+z6 z7+z11 (z4+z7)+z3 (z6+z7)+z4 z8+z6 z8-2 z7 z8)-s12 (z1 (-z11+z6+z8)+(z6-z8) (-z7+z8)+z11 (z7+z8))))+8 s34^2 s45 z1 z10 z9-16 s34 s45 s51 z1 z10 z9+8 s34^2 s45^2 z2 z9-4 s34^2 s45 z1 z2 z9-4 s34^2 s45 z10 z2 z9-8 s34 s45^2 z11 z2 z9-16 s34 s45^2 s51 z3 z9+8 s34 s45 s51 z1 z3 z9+8 s34 s45 s51 z10 z3 z9+16 s34 s45^2 z11 z3 z9-16 s45^2 s51 z11 z3 z9-8 s34 s45^2 z2 z3 z9+16 s45^2 s51 z3^2 z9+16 s34 s45^2 s51 z4 z9-16 s34 s45 s51 z1 z4 z9+4 s34 s51 z1^2 z4 z9-16 s34 s45 s51 z10 z4 z9-8 s34 s45 z1 z10 z4 z9-8 s34 s51 z1 z10 z4 z9-16 s45 s51 z1 z10 z4 z9+4 s34 s51 z10^2 z4 z9-8 s34 s45^2 z11 z4 z9-16 s45^2 s51 z11 z4 z9+4 s34 s45 z1 z11 z4 z9+8 s45 s51 z1 z11 z4 z9+4 s34 s45 z10 z11 z4 z9+8 s45 s51 z10 z11 z4 z9+8 s45^2 z11^2 z4 z9-8 s34 s45^2 z2 z4 z9+4 s34 s45 z1 z2 z4 z9+4 s34 s45 z10 z2 z4 z9-8 s34 s45 z11 z2 z4 z9-8 s45^2 z11 z2 z4 z9-16 s45^2 s51 z3 z4 z9+8 s45 s51 z1 z3 z4 z9+8 s45 s51 z10 z3 z4 z9-8 s45^2 z11 z3 z4 z9-16 s45 s51 z11 z3 z4 z9+8 s45^2 z2 z3 z4 z9-4 s34^2 s45 z1 z5 z9+8 s34 s45 s51 z1 z5 z9+2 s34^2 z1^2 z5 z9-4 s34 s51 z1^2 z5 z9-2 s34^2 z1 z10 z5 z9+4 s34 s51 z1 z10 z5 z9+4 s34 s45 z1 z11 z5 z9-8 s45 s51 z1 z11 z5 z9-4 s34^2 s45 z2 z5 z9-2 s34^2 z1 z2 z5 z9-8 s34 s45 z1 z2 z5 z9+2 s34^2 z10 z2 z5 z9+4 s34 s45 z11 z2 z5 z9+8 s34 s45 s51 z3 z5 z9+4 s34 s45 z1 z3 z5 z9+4 s34 s51 z1 z3 z5 z9+8 s45 s51 z1 z3 z5 z9-4 s34 s51 z10 z3 z5 z9-8 s34 s45 z11 z3 z5 z9+8 s45 s51 z11 z3 z5 z9+4 s34 s45 z2 z3 z5 z9-8 s45 s51 z3^2 z5 z9-8 s34 s45 z1 z10 z6 z9+16 s45 s51 z1 z10 z6 z9-8 s34 s45^2 z2 z6 z9+4 s34 s45 z1 z2 z6 z9+4 s34 s45 z10 z2 z6 z9+8 s45^2 z11 z2 z6 z9-8 s34 s45^2 z3 z6 z9+32 s45^2 s51 z3 z6 z9+4 s34 s45 z1 z3 z6 z9-16 s45 s51 z1 z3 z6 z9+4 s34 s45 z10 z3 z6 z9-16 s45 s51 z10 z3 z6 z9-8 s45^2 z11 z3 z6 z9-8 s34 s45 z2 z3 z6 z9-8 s45^2 z2 z3 z6 z9+8 s45^2 z3^2 z6 z9+16 s45 s51 z3^2 z6 z9-4 s34^2 s45 z10 z7 z9+8 s34 s45 s51 z10 z7 z9-2 s34^2 z1 z10 z7 z9+4 s34 s51 z1 z10 z7 z9+2 s34^2 z10^2 z7 z9-4 s34 s51 z10^2 z7 z9+4 s34 s45 z10 z11 z7 z9-8 s45 s51 z10 z11 z7 z9-4 s34^2 s45 z2 z7 z9+2 s34^2 z1 z2 z7 z9-2 s34^2 z10 z2 z7 z9-8 s34 s45 z10 z2 z7 z9+4 s34 s45 z11 z2 z7 z9+8 s34 s45 s51 z3 z7 z9-4 s34 s51 z1 z3 z7 z9+4 s34 s45 z10 z3 z7 z9+4 s34 s51 z10 z3 z7 z9+8 s45 s51 z10 z3 z7 z9-8 s34 s45 z11 z3 z7 z9+8 s45 s51 z11 z3 z7 z9+4 s34 s45 z2 z3 z7 z9-8 s45 s51 z3^2 z7 z9+8 s34^2 s45^2 z8 z9-16 s34 s45^2 s51 z8 z9-4 s34^2 s45 z1 z8 z9+8 s34 s45 s51 z1 z8 z9-4 s34^2 s45 z10 z8 z9+8 s34 s45 s51 z10 z8 z9-8 s34 s45^2 z11 z8 z9+16 s45^2 s51 z11 z8 z9+8 s34^2 s45 z2 z8 z9+16 s34 s45^2 z2 z8 z9-8 s34 s45^2 z3 z8 z9-16 s34 s45 s51 z3 z8 z9-16 s45^2 s51 z3 z8 z9-4 s34^2 s45^2 z9^2+4 s34^2 s45 z1 z9^2-s34^2 z1^2 z9^2+4 s34^2 s45 z10 z9^2+2 s34^2 z1 z10 z9^2+8 s34 s45 z1 z10 z9^2-s34^2 z10^2 z9^2+8 s34 s45^2 z11 z9^2-4 s34 s45 z1 z11 z9^2-4 s34 s45 z10 z11 z9^2-4 s45^2 z11^2 z9^2+8 s34 s45^2 z3 z9^2-4 s34 s45 z1 z3 z9^2-4 s34 s45 z10 z3 z9^2+8 s34 s45 z11 z3 z9^2+8 s45^2 z11 z3 z9^2-4 s45^2 z3^2 z9^2-s12^2 (4 s51^2 (z10^2+(z5-z8)^2-2 z10 (z5+z8))+(z11 z5-z2 z5-z10 z6+z2 z6+z10 z9-z11 z9)^2-4 s51 (2 z11 z2 z5+z2 (z5-z6) (z5-z8)+z11 (z5-z8) (z5-z9)+z10^2 (z6+z9)-z10 (z5 z6+z2 (z5+z6)-2 z5 z8+z6 z8+z5 z9-2 z6 z9+z8 z9+z11 (z5+z9))))-2 s12 s34 ((z2 (z5-z6)+z10 (z6-z9)+z11 (-z5+z9)) (z2 (-z5+z7)+z1 (z5-z9)+z10 (-z7+z9))-2 s51 (-z2 (z5-z7) (z5-z8)-z10^2 (z7+z9)+z1 (-2 z2 z5-(z5-z8) (z5-z9)+z10 (z5+z9))+z10 (z2 (z5+z7)+z7 z8-2 z7 z9+z8 z9+z5 (z7-2 z8+z9)))+2 s45 (z2^2 z5-z10 z2 z6+z2^2 z6+2 z2 z5 z6-z2 z5 z8+z10 z6 z8-z2 z6 z8-z10 z2 z9-z2 z5 z9-z10 z6 z9-z2 z6 z9-z10 z8 z9+2 z2 z8 z9+z10 z9^2-z11 ((-2 z10+z8-z9) z9+z2 (z5+z9)+z5 (-z8+z9))-2 s51 (z2 (z5+z8)+(z5-z8) (z8-z9)+z10 (-z2+z8+z9))))+4 s12 (s51 (-2 z1 z10 z4 z5+z1 z11 z4 z5+z10 z11 z4 z5+z1 z2 z4 z5+z10 z2 z4 z5-2 z11 z2 z4 z5-z1 z11 z5^2-z1 z2 z5^2+2 z11 z2 z5^2+2 z1 z3 z5^2-z11 z3 z5^2-z2 z3 z5^2+z1 z10 z4 z6-z10^2 z4 z6-z1 z2 z4 z6+z10 z2 z4 z6+z1 z10 z5 z6+z1 z2 z5 z6-2 z10 z2 z5 z6-2 z1 z3 z5 z6+z10 z3 z5 z6+z2 z3 z5 z6+2 z10^2 z4 z7-2 z10 z11 z4 z7-2 z10 z2 z4 z7+2 z11 z2 z4 z7+z10 z11 z5 z7+z10 z2 z5 z7-2 z11 z2 z5 z7-2 z10 z3 z5 z7+z11 z3 z5 z7+z2 z3 z5 z7-z10^2 z6 z7+z10 z2 z6 z7+z10 z3 z6 z7-z2 z3 z6 z7-2 s51 (-z10^2 (z4+z7)+z1 (-2 z3 z5+z10 (z4+z5)+(z4-z5) (z5-z8))-z3 (z5-z7) (z5-z8)+z10 (z5 z7+z3 (z5+z7)-2 z5 z8+z7 z8+z4 (z5-2 z7+z8)))+z1 z10 z4 z9-z10^2 z4 z9-z1 z11 z4 z9+z10 z11 z4 z9+z1 z10 z5 z9+z1 z11 z5 z9-2 z10 z11 z5 z9-2 z1 z3 z5 z9+z10 z3 z5 z9+z11 z3 z5 z9-2 z1 z10 z6 z9+2 z10^2 z6 z9+2 z1 z3 z6 z9-2 z10 z3 z6 z9-z10^2 z7 z9+z10 z11 z7 z9+z10 z3 z7 z9-z11 z3 z7 z9)+s45 (-4 s51^2 (z10 (-z3+z4+z8)+(z4-z8) (-z5+z8)+z3 (z5+z8))+(z2 (-z5+z6)+z11 (z5-z9)+z10 (-z6+z9)) (z2 (-z4+z6)+z11 (z4-z9)+z3 (-z6+z9))+2 s51 (z2 z3 z5-2 z2 z4 z5+z2 z3 z6+z2 z4 z6+z2 z5 z6+z3 z5 z6+z2 z4 z8+z2 z5 z8-2 z3 z5 z8-2 z2 z6 z8+z3 z6 z8+z3 z5 z9-2 z3 z6 z9+z3 z8 z9+z10 (-2 z3 z6+z4 z6+z2 (z4+z6)-2 z4 z8+z6 z8-2 z3 z9+z4 z9-2 z6 z9+z8 z9+z11 (z4+z9))+z11 (-2 z4 z5-2 z2 (z4+z5)+z4 z8+z5 z8+z4 z9+z5 z9-2 z8 z9+z3 (z5+z9)))))+2 s23 (s12^2 (2 z10 z2 z6-z2 z5 z6+z10 z6^2+z2 z6^2+z2 z5 z8-z10 z6 z8-z2 z6 z8-2 s51 (z11 (z5+z8)+(z5-z8) (-z6+z8)+z10 (-z11+z6+z8))-z10 z6 z9+z10 z8 z9+z11^2 (z5+z9)-z11 (z5 z6+z2 (z5+z6)+z5 z8-2 z6 z8-2 z5 z9+z6 z9+z8 z9+z10 (z6+z9)))+s34^2 (2 z10 z2 z7-z2 z5 z7+z10 z7^2+z2 z7^2+z2 z5 z8-z10 z7 z8-z2 z7 z8-z10 z7 z9+z10 z8 z9+z1^2 (z5+z9)-z1 (z5 z7+z2 (z5+z7)+z5 z8-2 z7 z8-2 z5 z9+z7 z9+z8 z9+z10 (z7+z9))-2 s45 (z2 (z7+z8)+(z7-z8) (z8-z9)+z1 (-z2+z8+z9)))+s34 (-z1^2 z4 z5+z1 z11 z4 z5+z1 z2 z4 z5-z11 z2 z4 z5+2 z1^2 z4 z6-2 z1 z10 z4 z6-2 z1 z2 z4 z6+2 z10 z2 z4 z6-z1^2 z5 z6+z1 z2 z5 z6+z1 z3 z5 z6-z2 z3 z5 z6+z1 z10 z4 z7-2 z1 z11 z4 z7+z10 z11 z4 z7+z1 z2 z4 z7-2 z10 z2 z4 z7+z11 z2 z4 z7+z1 z11 z5 z7-2 z1 z2 z5 z7+z11 z2 z5 z7+z1 z3 z5 z7-2 z11 z3 z5 z7+z2 z3 z5 z7+z1 z10 z6 z7+z1 z2 z6 z7-2 z10 z2 z6 z7-2 z1 z3 z6 z7+z10 z3 z6 z7+z2 z3 z6 z7-z10 z11 z7^2+2 z10 z2 z7^2-z11 z2 z7^2-z10 z3 z7^2+2 z11 z3 z7^2-z2 z3 z7^2-2 s51 (z1^2 (z4+z5)+2 z10 z3 z7-z10 (z4-z7) (z7-z8)-z3 (z5-z7) (z7-z8)-z1 (-2 z4 z5+z4 z7+z5 z7+z10 (z4+z7)+z3 (z5+z7)+z4 z8+z5 z8-2 z7 z8))-z1^2 z4 z9+z1 z10 z4 z9+z1 z11 z4 z9-z10 z11 z4 z9+2 z1^2 z5 z9-2 z1 z11 z5 z9-2 z1 z3 z5 z9+2 z11 z3 z5 z9-z1^2 z6 z9+z1 z10 z6 z9+z1 z3 z6 z9-z10 z3 z6 z9-2 z1 z10 z7 z9+z1 z11 z7 z9+z10 z11 z7 z9+z1 z3 z7 z9+z10 z3 z7 z9-2 z11 z3 z7 z9+2 s45 (z11 z2 z4+z2 z3 z6-2 z2 z4 z6+z11 z2 z7-2 z11 z3 z7+z2 z3 z7+z11 z4 z7+z2 z4 z7+z2 z6 z7+z3 z6 z7-2 z11 z4 z8+z2 z4 z8+z2 z6 z8-2 z3 z6 z8+z11 z7 z8-2 z2 z7 z8+z3 z7 z8+2 s51 (z1 (-z3+z4+z8)+(z4-z8) (-z7+z8)+z3 (z7+z8))-2 z11 z3 z9+z11 z4 z9+z3 z6 z9-2 z11 z7 z9-2 z3 z7 z9+z11 z8 z9+z3 z8 z9+z1 (z3 z6-2 z4 z6-2 z2 (z4+z6)+z4 z8+z6 z8+z3 z9+z4 z9+z6 z9-2 z8 z9+z11 (z4+z9))))-2 (s51 (z1 (z4-z5)+z3 (z5-z7)+z10 (-z4+z7)) (z1 (-z4+z6)+z11 (z4-z7)+z3 (-z6+z7))+s45 (-2 s51 (z1 (-2 z11 z4+z3 (z4+z6)-(z4-z6) (z4-z8))+z11 (z3 (z4+z7)-(z4-z7) (z4-z8))+z3 (-2 z6 z7-z3 (z6+z7)+z4 (z6+z7-2 z8)+z6 z8+z7 z8))+(z1 (z4-z6)+z3 (z6-z7)+z11 (-z4+z7)) (z2 (-z4+z6)+z11 (z4-z9)+z3 (-z6+z9))))+s12 (2 s51 z1 z10 z4+2 s51 z1 z11 z4-4 s51 z10 z11 z4+2 s51 z1 z11 z5-4 s51 z1 z3 z5+2 s51 z11 z3 z5+2 s51 z1 z4 z5+2 s51 z11 z4 z5+z1 z11 z4 z5-z11^2 z4 z5-z1 z2 z4 z5+z11 z2 z4 z5+2 s51 z1 z10 z6-4 s51 z1 z3 z6+2 s51 z10 z3 z6+2 s51 z1 z4 z6+2 s51 z10 z4 z6+z1 z10 z4 z6-2 z1 z11 z4 z6+z10 z11 z4 z6+z1 z2 z4 z6-2 z10 z2 z4 z6+z11 z2 z4 z6-4 s51 z1 z5 z6+z1 z11 z5 z6+z1 z2 z5 z6-2 z11 z2 z5 z6-4 s51 z3 z5 z6-2 z1 z3 z5 z6+z11 z3 z5 z6+z2 z3 z5 z6-z1 z10 z6^2-z1 z2 z6^2+2 z10 z2 z6^2+2 z1 z3 z6^2-z10 z3 z6^2-z2 z3 z6^2-4 s51 z10 z11 z7+2 s51 z10 z3 z7+2 s51 z11 z3 z7-4 s51 z10 z4 z7-4 s51 z11 z4 z7-2 z10 z11 z4 z7+2 z11^2 z4 z7+2 z10 z2 z4 z7-2 z11 z2 z4 z7+2 s51 z11 z5 z7-z11^2 z5 z7+z11 z2 z5 z7+2 s51 z3 z5 z7+z11 z3 z5 z7-z2 z3 z5 z7+2 s51 z10 z6 z7+z10 z11 z6 z7-2 z10 z2 z6 z7+z11 z2 z6 z7+2 s51 z3 z6 z7+z10 z3 z6 z7-2 z11 z3 z6 z7+z2 z3 z6 z7-4 s51 z1 z4 z8+2 s51 z10 z4 z8+2 s51 z11 z4 z8+2 s51 z1 z5 z8-4 s51 z11 z5 z8+2 s51 z3 z5 z8+2 s51 z1 z6 z8-4 s51 z10 z6 z8+2 s51 z3 z6 z8+2 s51 z10 z7 z8+2 s51 z11 z7 z8-4 s51 z3 z7 z8-z1 z10 z4 z9+z1 z11 z4 z9+z10 z11 z4 z9-z11^2 z4 z9-2 z1 z11 z5 z9+2 z11^2 z5 z9+2 z1 z3 z5 z9-2 z11 z3 z5 z9+z1 z10 z6 z9+z1 z11 z6 z9-2 z10 z11 z6 z9-2 z1 z3 z6 z9+z10 z3 z6 z9+z11 z3 z6 z9+z10 z11 z7 z9-z11^2 z7 z9-z10 z3 z7 z9+z11 z3 z7 z9+2 s45 (-2 z2 z3 z6+z2 z4 z6-z2 z6^2-z3 z6^2-z2 z4 z8+z2 z6 z8+z3 z6 z8+2 s51 (z11 (-z3+z4+z8)+(z4-z8) (-z6+z8)+z3 (z6+z8))+z3 z6 z9-z3 z8 z9-z11^2 (z4+z9)+z11 (z4 z6+z2 (z4+z6)+z4 z8-2 z6 z8-2 z4 z9+z6 z9+z8 z9+z3 (z6+z9)))+s34 (-2 z1 z11 z5+z1 z2 z5+z11 z2 z5+z1 z10 z6+z1 z2 z6-2 z10 z2 z6+z1 z5 z6+z2 z5 z6+z10 z11 z7-2 z10 z2 z7+z11 z2 z7+z11 z5 z7+z2 z5 z7-2 z10 z6 z7-2 z2 z6 z7+z1 z5 z8+z11 z5 z8-2 z2 z5 z8-2 z1 z6 z8+z10 z6 z8+z2 z6 z8+z10 z7 z8-2 z11 z7 z8+z2 z7 z8+2 s51 (-z5 z7-4 s45 z8+z5 z8+z7 z8-z8^2+z1 (-z10+z5+z8)+z10 (z7+z8))+z1 z10 z9-2 z1 z11 z9+z10 z11 z9-2 z1 z5 z9-2 z11 z5 z9+z1 z6 z9+z10 z6 z9+z10 z7 z9+z11 z7 z9+z1 z8 z9-2 z10 z8 z9+z11 z8 z9+2 s45 (z2 (z6+z8)+(z6-z8) (z8-z9)+z11 (-z2+z8+z9))))));

gamma=1/2 (-7+d);

vars={z1,z2,z3,z4,z5,z6,z7,z8,z9,z10,z11};

relativevars={z1,z2,z3,z4,z5,z6,z7,z8};

masterintegrals={1/(z1 z4 z8),1/(z3 z7 z8),1/(z2 z5 z8),1/(z3 z6 z8),1/(z1 z5 z8),1/(z2 z6 z8),1/(z1 z3 z4 z7),1/(z1 z3 z4 z6),1/(z1 z3 z5 z7),1/(z2 z4 z7 z8),1/(z1 z3 z6 z8),1/(z1 z4 z6 z8),1/(z1 z3 z5 z8),1/(z3 z5 z7 z8),1/(z2 z5 z7 z8),1/(z2 z4 z6 z8),1/(z1 z3 z4 z6 z8),1/(z1 z3 z5 z7 z8),1/(z1 z2 z5 z6 z8),1/(z2 z3 z6 z7 z8),1/(z1 z2 z4 z5 z8),1/(z2 z3 z5 z6 z8),1/(z1 z4 z5 z6 z8),1/(z3 z5 z6 z7 z8),1/(z2 z5 z6 z7 z8),1/(z1 z2 z3 z6 z8),1/(z1 z2 z3 z5 z8),1/(z2 z4 z5 z6 z8),1/(z2 z4 z6 z7 z8),1/(z2 z4 z5 z7 z8),1/(z1 z3 z5 z6 z8),z7/(z1 z3 z5 z6 z8),1/(z1 z2 z4 z6 z8),z7/(z1 z2 z4 z6 z8),1/(z2 z3 z5 z7 z8),z9/(z2 z3 z5 z7 z8),1/(z1 z3 z4 z5 z6 z7),1/(z1 z3 z4 z5 z6 z8),1/(z1 z3 z5 z6 z7 z8),1/(z1 z2 z3 z4 z6 z8),1/(z1 z2 z3 z5 z7 z8),1/(z1 z2 z3 z5 z6 z8),z7/(z1 z2 z3 z5 z6 z8),1/(z1 z2 z4 z5 z6 z8),z9/(z1 z2 z4 z5 z6 z8),1/(z2 z3 z5 z6 z7 z8),z9/(z2 z3 z5 z6 z7 z8),1/(z2 z4 z5 z6 z7 z8),z9/(z2 z4 z5 z6 z7 z8),1/(z1 z2 z3 z4 z6 z7 z8),z9/(z1 z2 z3 z4 z6 z7 z8),1/(z1 z2 z3 z4 z5 z7 z8),z9/(z1 z2 z3 z4 z5 z7 z8),1/(z1 z2 z3 z5 z6 z7 z8),z4/(z1 z2 z3 z5 z6 z7 z8),z9/(z1 z2 z3 z5 z6 z7 z8),1/(z1 z2 z3 z4 z5 z6 z8),z7/(z1 z2 z3 z4 z5 z6 z8),z9/(z1 z2 z3 z4 z5 z6 z8),1/(z1 z2 z3 z4 z5 z6 z7 z8),z9/(z1 z2 z3 z4 z5 z6 z7 z8),z10/(z1 z2 z3 z4 z5 z6 z7 z8)};

targetintegral={z9^2/(z1 z2 z3 z4 z5 z6 z7 z8)};


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


(* ::Section::Closed:: *)
(*Cut 1 (184)*)


u=twist//.cut1//Factor;
vars={z7,z9,z6,z5,z2,z3,z10,z11};
leftbases={{
1,
1/z6,
1/(z5 z6),
1/(z2 z5),
1/(z2 z6),z7/(z2 z6),
1/(z3 z6),
1/(z2 z3 z6),
1/(z2 z5 z6),z9/(z2 z5 z6),
1/(z3 z5 z6),
1/(z2 z3 z5 z6),z7/(z2 z3 z5 z6),z9/(z2 z3 z5 z6),
1/(z2 z3 z5 z7),z9/(z2 z3 z5 z7),
1/(z2 z3 z6 z7),z9/(z2 z3 z6 z7),
1/(z2 z3 z5 z6 z7),z10/(z2 z3 z5 z6 z7),z9/(z2 z3 z5 z6 z7)},
{
1,
1/z2,
1/z6,
1/(z2 z5),
1/(z2 z6),1/(z2 z3 z5),z9/(z2 z3 z5),1/(z5 z6),1/(z2 z3 z6),z9/(z2 z3 z6),z10/(z2 z3 z6),1/(z2 z5 z6),1/(z2 z3 z5 z6),z9/(z2 z3 z5 z6),z10/(z2 z3 z5 z6)},{1,1/z5,1/z6,z10/(z2 z3),1/(z5 z6),1/(z2 z3 z5),1/(z2 z3 z6),1/(z2 z3 z5 z6)},{1,1/z5,1/(z2 z3),1/(z2 z3 z5)},{1,1/(z2 z3)},{1,1/z3},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 2 (378)*)


u=twist//.cut2//Factor;
vars={z4,z9,z6,z5,z2,z1,z10,z11};
leftbases={{
1,
1/z5,
1/(z1 z5),
1/(z2 z5),z9/(z2 z5),
1/(z2 z6),
1/(z5 z6),
1/(z1 z2 z5),
1/(z1 z5 z6),
1/(z2 z5 z6),z9/(z2 z5 z6),
1/(z1 z2 z4 z5),z9/(z1 z2 z4 z5),
1/(z1 z2 z4 z6),z9/(z1 z2 z4 z6),
1/(z1 z2 z5 z6),z4/(z1 z2 z5 z6),z9/(z1 z2 z5 z6),
1/(z1 z2 z4 z5 z6),z9/(z1 z2 z4 z5 z6),z10/(z1 z2 z4 z5 z6)
},{1,1/z2,1/z5,1/(z2 z5),1/(z2 z6),1/(z5 z6),1/(z1 z2 z5),z9/(z1 z2 z5),z10/(z1 z2 z5),1/(z1 z2 z6),z9/(z1 z2 z6),1/(z2 z5 z6),1/(z1 z2 z5 z6),z9/(z1 z2 z5 z6),z10/(z1 z2 z5 z6)},{1,1/z5,1/z6,1/(z1 z2),1/(z5 z6),1/(z1 z2 z5),1/(z1 z2 z6),1/(z1 z2 z5 z6)},{1,1/z5,1/(z1 z2),1/(z1 z2 z5)},{1,1/(z1 z2)},{1,1/z1},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 3 (258)*)


u=twist//.cut3//Factor;
vars={z4,z9,z7,z6,z1,z3,z10,z11};
leftbases={
{1,1/z7,1/(z1 z3),1/(z1 z4),1/(z1 z6),1/(z3 z6),1/(z4 z6),1/(z3 z7),z9/(z3 z7),1/(z4 z7),1/(z6 z7),
1/(z1 z3 z6),z7/(z1 z3 z6),
1/(z1 z4 z6),z9/(z1 z4 z6),
1/(z1 z3 z7),
1/(z3 z6 z7),z9/(z3 z6 z7),
1/(z4 z6 z7),z9/(z4 z6 z7),
1/(z1 z3 z4 z6),z7/(z1 z3 z4 z6),z9/(z1 z3 z4 z6),
1/(z1 z3 z4 z7),
1/(z1 z3 z6 z7),z4/(z1 z3 z6 z7),z9/(z1 z3 z6 z7),
z9/(z1 z3 z4 z7),
1/(z1 z3 z4 z6 z7),z9/(z1 z3 z4 z6 z7),z10/(z1 z3 z4 z6 z7)
},
{1,
1/z1,z9/z1,
1/z3,
1/z6,
1/z7,z9/z7,
1/(z1 z3),z9/(z1 z3),
1/(z1 z6),z9/(z1 z6),
1/(z3 z6),
1/(z3 z7),
1/(z6 z7),z9/(z6 z7),
1/(z1 z3 z6),z9/(z1 z3 z6),z7/(z1 z3 z6),z9^2/(z1 z3 z6),z9^3/(z1 z3 z6),z9*z7/(z1 z3 z6),
1/(z1 z3 z7),z9/(z1 z3 z7),z9^2/(z1 z3 z7),
1/(z3 z6 z7),
1/(z1 z3 z6 z7),z9/(z1 z3 z6 z7),z9^2/(z1 z3 z6 z7)
},
{1,1/z1,1/z6,1/z7,1/(z1 z3),z7/(z1 z3),1/(z1 z6),1/(z6 z7),
1/(z1 z3 z7),1/(z1 z3 z6),z7/(z1 z3 z6),1/(z1 z3 z6 z7)},
{1,1/z6,1/(z1 z3),1/(z1 z3 z6)},
{1,1/(z1 z3)},
{1,1/z3},
{1},
{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 4 (368)*)


u=twist//.cut4//Factor;
vars={z4,z9,z7,z5,z2,z1,z10,z11};
leftbases={{1,1/z1,1/(z1 z2),1/(z1 z4),1/(z1 z5),z7/(z1 z5),1/(z2 z5),1/(z2 z7),1/(z5 z7),1/(z1 z2 z4),1/(z1 z2 z5),z7/(z1 z2 z5),1/(z1 z4 z5),1/(z1 z5 z7),1/(z2 z5 z7),z9/(z2 z5 z7),1/(z1 z2 z4 z5),z9/(z1 z2 z4 z5),z7/(z1 z2 z4 z5),1/(z1 z2 z4 z7),z9/(z1 z2 z4 z7),1/(z1 z2 z5 z7),z4/(z1 z2 z5 z7),z9/(z1 z2 z5 z7),1/(z1 z2 z4 z5 z7),z9/(z1 z2 z4 z5 z7),z10/(z1 z2 z4 z5 z7)},{1,1/z1,z9/z1,z9^2/z1,1/z2,1/(z1 z2),z9/(z1 z2),z7/(z1 z2),1/(z1 z5),z9/(z1 z5),z9^2/(z1 z5),1/(z2 z5),1/(z2 z7),1/(z5 z7),1/(z1 z2 z5),z9/(z1 z2 z5),z7/(z1 z2 z5),z10/(z1 z2 z5),(z10 z9)/(z1 z2 z5),z9^2/(z1 z2 z5),1/(z1 z2 z7),z9/(z1 z2 z7),1/(z2 z5 z7),1/(z1 z2 z5 z7),z9/(z1 z2 z5 z7),z10/(z1 z2 z5 z7)},{1,1/z1,z7/z1,z7^2/z1,z10/z1,1/z5,1/z7,1/(z1 z2),z7/(z1 z2),1/(z1 z5),z7/(z1 z5),z7^2/(z1 z5),z2/(z1 z5),1/(z5 z7),1/(z1 z2 z5),z7/(z1 z2 z5),1/(z1 z2 z7),1/(z1 z2 z5 z7)},{1,1/z1,1/z5,1/(z1 z2),1/(z1 z5),1/(z1 z2 z5)},{1,1/z1,1/(z1 z2)},{1,1/z1},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 5 (158) *)


(*choosing the basis*)
u=twist//.cut5//Factor;
vars={z7,z9,z4,z6,z2,z3,z10,z11};
leftbases={
{1,1/z3,1/(z2 z3),1/(z2 z4),1/(z2 z6),1/(z3 z6),z7/(z3 z6),1/(z3 z7),1/(z4 z6),1/(z2 z3 z6),z7/(z2 z3 z6),1/(z2 z3 z7),1/(z2 z4 z6),z9/(z2 z4 z6),1/(z3 z4 z6),1/(z3 z6 z7),1/(z2 z3 z4 z6),z7/(z2 z3 z4 z6),z9/(z2 z3 z4 z6),1/(z2 z3 z4 z7),z9/(z2 z3 z4 z7),1/(z2 z3 z6 z7),z9/(z2 z3 z6 z7),z4/(z2 z3 z6 z7),1/(z2 z3 z4 z6 z7),z9/(z2 z3 z4 z6 z7),z10/(z2 z3 z4 z6 z7)},
{1,1/z2,1/z3,z9/z3,z9^2/z3,1/(z2 z3),z9/(z2 z3),z4/(z2 z3),1/(z2 z4),1/(z2 z6),1/(z3 z6),z9/(z3 z6),z9^2/(z3 z6),1/(z4 z6),1/(z2 z3 z4),z9/(z2 z3 z4),1/(z2 z3 z6),z9/(z2 z3 z6),z4/(z2 z3 z6),z10/(z2 z3 z6),z9^2/(z2 z3 z6),(z10 z9)/(z2 z3 z6),1/(z2 z4 z6),1/(z2 z3 z4 z6),z9/(z2 z3 z4 z6),z10/(z2 z3 z4 z6)},
{1,1/z3,z4/z3,z4^2/z3,z10/z3,1/z4,1/z6,1/(z2 z3),z4/(z2 z3),1/(z3 z6),z4/(z3 z6),z4^2/(z3 z6),z2/(z3 z6),1/(z4 z6),1/(z2 z3 z4),1/(z2 z3 z6),z4/(z2 z3 z6),1/(z2 z3 z4 z6)},
{1,1/z3,1/z6,1/(z2 z3),1/(z3 z6),1/(z2 z3 z6)},
{1,1/z3,1/(z2 z3)},
{1,1/z3},
{1},
{1}
};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 6 (268)*)


(*choosing the basis*)
u=twist//.cut6//Factor;
vars={z7,z9,z4,z5,z1,z3,z10,z11};
leftbases={{1,1/z4,1/(z1 z3),1/(z1 z4),z7/(z1 z4),1/(z1 z5),1/(z3 z5),1/(z3 z7),1/(z4 z5),1/(z4 z7),1/(z5 z7),1/(z1 z3 z4),1/(z1 z3 z5),z7/(z1 z3 z5),1/(z1 z4 z5),z9/(z1 z4 z5),1/(z3 z5 z7),z9/(z3 z5 z7),1/(z4 z5 z7),z9/(z4 z5 z7),1/(z1 z3 z4 z5),z7/(z1 z3 z4 z5),z9/(z1 z3 z4 z5),1/(z1 z3 z4 z7),z9/(z1 z3 z4 z7),1/(z1 z3 z5 z7),z9/(z1 z3 z5 z7),z4/(z1 z3 z5 z7),1/(z1 z3 z4 z5 z7),z9/(z1 z3 z4 z5 z7),z10/(z1 z3 z4 z5 z7)},{1,1/z1,1/z3,z9/z3,1/z4,z9/z4,1/z5,1/(z1 z3),z9/(z1 z3),1/(z1 z4),1/(z1 z5),1/(z3 z5),z9/(z3 z5),1/(z4 z5),z9/(z4 z5),1/(z1 z3 z4),z10/(z1 z3 z4),z5/(z1 z3 z4),1/(z1 z3 z5),z9/(z1 z3 z5),z4/(z1 z3 z5),z10/(z1 z3 z5),(z10 z9)/(z1 z3 z5),z9^2/(z1 z3 z5),1/(z1 z4 z5),1/(z1 z3 z4 z5),z9/(z1 z3 z4 z5),z10/(z1 z3 z4 z5)},{1,1/z3,1/z4,1/z5,1/(z1 z3),z4/(z1 z3),1/(z3 z5),1/(z4 z5),1/(z1 z3 z4),1/(z1 z3 z5),z4/(z1 z3 z5),1/(z1 z3 z4 z5)},{1,1/z5,1/(z1 z3),1/(z1 z3 z5)},{1,1/(z1 z3)},{1,1/z3},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 7 (1347)*)


u=twist//.cut7//Factor;
vars={z6,z9,z5,z8,z2,z10,z11};
leftbases={{1,1/(z5 z6),1/(z2 z5 z8),z9/(z2 z5 z8),1/(z2 z6 z8),z9/(z2 z6 z8),1/(z2 z5 z6 z8),z9/(z2 z5 z6 z8),z10/(z2 z5 z6 z8)},{1,1/z5,1/(z2 z8),z9/(z2 z8),z10/(z2 z8),1/(z2 z5 z8),z9/(z2 z5 z8),z10/(z2 z5 z8)},{1,1/z5,1/(z2 z8),1/(z2 z5 z8)},{1,1/(z2 z8)},{1,1/z2},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 8 (1346)*)


u=twist//.cut8//Factor;
vars={z7,z9,z5,z2,z8,z10,z11};
leftbases={{1,1/z8,1/(z2 z8),1/(z5 z8),1/(z5 z7),1/(z2 z5 z8),z7/(z2 z5 z8),z9/(z2 z5 z8),1/(z2 z7 z8),z9/(z2 z7 z8),1/(z2 z5 z7 z8),z9/(z2 z5 z7 z8),z10/(z2 z5 z7 z8)},{1,1/z5,1/(z2 z8),z9/(z2 z8),z10/(z2 z8),1/(z2 z5 z8),z9/(z2 z5 z8),z10/(z2 z5 z8)},{1,1/z5,1/(z2 z8),1/(z2 z5 z8)},{1,1/(z2 z8)},{1,1/z8},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 9 (1357)*)


u=twist//.cut9//Factor;
vars={z4,z9,z6,z2,z8,z10,z11};
leftbases={{1,1/z8,1/(z2 z8),1/(z4 z6),1/(z6 z8),1/(z2 z4 z8),z9/(z2 z4 z8),1/(z2 z6 z8),z4/(z2 z6 z8),z9/(z2 z6 z8),1/(z2 z4 z6 z8),z9/(z2 z4 z6 z8),z10/(z2 z4 z6 z8)},{1,1/z6,1/(z2 z8),z9/(z2 z8),z10/(z2 z8),1/(z2 z6 z8),z9/(z2 z6 z8),z10/(z2 z6 z8)},{1,1/z6,1/(z2 z8),1/(z2 z6 z8)},{1,1/(z2 z8)},{1,1/z8},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};


(* ::Section::Closed:: *)
(*Cut 10 (2478)*)


u=twist//.cut10//Factor;
vars={z6,z9,z5,z3,z1,z10,z11};
leftbases={{1,1/z5,1/z6,1/(z5 z6),z9/(z5 z6),1/(z1 z3 z5),z9/(z1 z3 z5),1/(z1 z3 z6),z9/(z1 z3 z6),1/(z1 z3 z5 z6),z9/(z1 z3 z5 z6),z10/(z1 z3 z5 z6)},{1,1/z5,z9,z9/z5,1/(z1 z3),z9/(z1 z3),z10/(z1 z3),1/(z1 z3 z5),z9/(z1 z3 z5),z10/(z1 z3 z5)},{1,1/z5,1/(z1 z3),1/(z1 z3 z5)},{1,1/(z1 z3)},{1,1/z1},{1},{1}};
rightbases=leftbases//.{1/z_:>DB[z]};



(* ::Section:: *)
(*Result*)


numpoint={s12 :> -1/3, s23 :> -1/5, s34 :> -1/7, s45 :> -3/7, s51 :> -5/7,  d :> 79/11};


result=-((87081696931 mis[1])/6431250)+(568276613 mis[2])/6431250+(28706191 mis[3])/13125-(487396418398 mis[4])/64771875+(6567709629731 mis[5])/5440837500+(122474140751 mis[6])/32156250-(516304 mis[8])/6125+(516304 mis[9])/6125+(7150608 mis[10])/42875-(62583683951 mis[11])/233178750+(24295034849 mis[12])/67528125-(95634048254 mis[13])/116589375+(69794374 mis[14])/153125-(1721967473 mis[15])/6431250+(204870033871 mis[16])/67528125-(244 mis[17])/105-(671 mis[18])/105-(2645009 mis[19])/24500+(1479 mis[20])/70-(70193 mis[21])/6125+(1281 mis[22])/50-(21290226 mis[23])/214375+(41676 mis[24])/6125+(7585722 mis[25])/42875+(469591 mis[26])/2625+(30613 mis[27])/1875-(1300512 mis[28])/30625-(2261544 mis[29])/8575+(1530282 mis[30])/42875-(6801623 mis[31])/246750-(78843632 mis[32])/158625-(46262974 mis[33])/128625-(9915580753 mis[34])/3858750+(127573 mis[35])/3750-(583184 mis[36])/5625-(52348 mis[37])/8575+(2134 mis[38])/735-(57 mis[39])/49-(153 mis[40])/7+(17 mis[41])/150-(405557 mis[42])/110250-(72197 mis[43])/4375+(3302681 mis[44])/257250+(307768 mis[45])/6125+(2434 mis[46])/175-(969 mis[47])/25-(20501924 mis[48])/300125-(136896 mis[49])/1225+(17 mis[50])/42-(17 mis[51])/7+mis[52]/20-(3 mis[53])/10-(3 mis[54])/98-(219 mis[55])/70+(289 mis[56])/70-mis[57]/20-(149 mis[59])/70-mis[60]/105-(403 mis[61])/1470-(17 mis[62])/21;
