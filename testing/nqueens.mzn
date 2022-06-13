%Parámetros

include "globals.mzn";

%Parametro
int: n;

array [1..n] of var 1..n: rows;

constraint alldifferent(rows);

constraint
  forall(i,j in 1..n where i < j)(
    rows[i] - rows[j] != i - j /\
    rows[i] - rows[j] != j - i
  );

solve satisfy;
