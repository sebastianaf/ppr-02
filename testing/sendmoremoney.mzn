% Use this editor as a MiniZinc scratch book
% S E N D M O R Y

include "alldifferent.mzn";

var 1..9: S;
var 0..9: E;
var 0..9: N;
var 0..9: D;
var 1..9: M;
var 0..9: O;
var 0..9: R;
var 0..9: Y;

%Constraints
constraint alldifferent([S,E,N,D,M,O,R,Y]);


constraint 
  ((S*1000) + (E*100) + (N*10) + D) + 
  ((M*1000)+(O*100)+(R*10)+E) = 
  ((M*10000)+(O*1000)+(N*100)+(E*10)+Y);

solve satisfy;