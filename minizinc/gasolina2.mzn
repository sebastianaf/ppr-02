include "globals.mzn";

int :p;
int :n;
int :m;
array [1..n, 1..m] of float :AB;
array [1..n] of float: C;
array [1..n,1..2] of int: D;


array [1..n] of var int: E;


constraint forall(i in 1..n)(E[i] >= 0);
constraint sum(i in 1..n)(E[i]) == p;
constraint
  forall(i in 1..n)(
    if D[i,1] == -1 then 
      true 
    else 
      sum(j in 1..m)(AB[i,j]*E[i]) >= D[i,1]
    endif 
    /\
    if D[i,2] == -1 then 
      true 
    else 
      sum(j in 1..m)(AB[i,j]*E[i]) <= D[i,2]
    endif 
  );

 
solve minimize sum(i in 1..n)(C[i]*E[i]);