#
# Solve A\b using Jacobi's method
#
# 10x - y + 2z = 6
#  -x + 11y - z + 3w = 25
# 2x -y +10z -w = -11
# 3y -z + 8w = 15

A = [
  10  -1   2   0;
  -1  11  -1   3;
   2  -1  10  -1;
   0   3  -1   8
];

b = [ 6; 25; -11; 15];

# 1) solve using Octave's internal solver
# results should be [1; 2; -1; 2]
vs = S\b

# 2) solve using jacobi method 
# - no pivoting required
function jx(v)
  x = (6 +1y -2z) / 6
endfunction

function jy(v)
  body
endfunction

function jz(v)
  body
endfunction

function jw(v)
  body
endfunction
