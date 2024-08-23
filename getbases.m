(* ::Package:: *)

(* ::Input:: *)
(**)


(* ::Section:: *)
(*Functions*)


CountCritPoints[vars_, omegas_] := Module[{
	numcritpoints
    },
    
    numcritpoints = omegas // RightComposition[
      Thread[# == 0] &,
      Solve[#, vars] &, 
      Union, 
      Length
    ];
    
    Return[numcritpoints];
    
  ];


GetBasis[u_, vars_, relativevars_] := Module[{
  rvars, listden, tosector, todens, sector, ureg, r, omegareg, 
  subsectors, dim, dimsector, extravars, ansatz, bsector, basis, 
  relvars, remvars, rulextravars, unum
  },
  
  
   extravars := Complement[Variables[u], vars];
  
  rulextravars := Table[extravars[[j]] -> Prime[100 + 10 * j], {j, Length[extravars]}];

  unum = u // ReplaceRepeated[ rulextravars ] // Factor ;
  
  relvars = Intersection[vars, relativevars];
  
  listden = Subsets[relvars, Length[relvars]];
  
  tosector = Thread[listden -> (Range[Length[listden]] // Map[sector[#] &])];
  
  todens = tosector // Map[Reverse];
  
  ureg[i_] := unum // ReplaceRepeated[Thread[listden[[i]] -> 0]];
  
  remvars[i_] := DeleteElements[vars, listden[[i]]];
 
   
  rvars[i_] := Range[Length[remvars[i]]];
  
  omegareg[j_] := rvars[j] // Map[
      Simplify[
         D[Log[ureg[j]], remvars[j][[#]]]
     &]
  ];
  
  dimsector[i_] := dimsector[i] = CountCritPoints[remvars[i], omegareg[i]];
  
  ansatz[i_] := {
    1 / (sector[i] // ReplaceRepeated[todens] // Apply[Times]), 
    Table[
      (remvars[i][[j]])^k / (sector[i] // ReplaceRepeated[todens] // Apply[Times]), 
      {k, 1, 10}, 
      {j, Length[remvars[i]]}
    ]
  } // Flatten;
  
  bsector[i_] := If[dimsector[i] > 0, ansatz[i][[1 ;; dimsector[i]]], {0}];
  
  basis = Range[Length[listden]] // RightComposition[
    Map[bsector],
    Flatten,
    DeleteCases[0]
  ];
  
  Return[basis]
];


GetBases[u_, vars_, relativevars_] := Module[{rangevars, varbas, basis, bases},
  
  rangevars = vars // Length // Range;
  
  varbas[i_] := (vars)[[-i ;; -1]];
  
  basis[i_] := GetBasis[u, varbas[i], relativevars];
  
  bases = rangevars // Map[basis] // Reverse;
  
  Return[bases]
];
