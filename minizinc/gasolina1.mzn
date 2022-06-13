int :p = 12000;

var int :c1;
var int :c2;
var int :c3;

constraint
  c1 >= 0 /\ c2 >= 0 /\ c3 >= 0 /\
  c1 + c2 + c3 = p /\
  120*c1 + 100*c2 + 74*c3 >= 89*p /\
  60*c1 + 2.5*c2 + 4.0*c3 <= 11*p /\
  105*c1 + 3*c2 + 12*c3 <= 17*p;
  
solve minimize 0.58*c1 + 1.55*c2 + 0.85*c3;