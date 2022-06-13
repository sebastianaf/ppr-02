var int :c1;
var int :c2;

constraint 
  c1 >= 0 /\
  c2 >= 0 /\
  7*c1 + 8*c2 <= 28 /\
  2*c1 + c2 <= 6;
  
output [
  "ventas = \(120000*c1+80000*c2)\n",
  "con c1=\(c1) c2=\(c2)\n"
];

solve maximize 120000*c1 + 80000*c2
