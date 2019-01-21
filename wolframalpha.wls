Print["Wolfram|Alpha 1.0 for " <> $SystemID <> "\nCopyright 2019 Wolfram Research, Inc."];
input = CreateUUID[];
While[ True,
 Pause[.1];
 input = InputString["\n= "];
 If[ 
  MemberQ[ {"","exit","quit","end","bye"}, ToLowerCase[input] ] 
  , 
  Exit[]
  ,
  result = WolframAlpha[ input, "ShortAnswer" ]; 
  If[ Head[result] === Missing, result = "unable to answer" ];
  Print[ "\n" <> result ] 
 ]
]
