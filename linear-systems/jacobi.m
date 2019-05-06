## Copyright (C) 2018, Anderson R. P. Domingues
##
## This file (jacobi.m) is free software; you can redistribute 
## it and/or modify it under the terms of the GNU General Public
## License as published by the Free Software Foundation;
## either version 3 of the License, or (at your option) any
## later version.
##
## This file (jacobi.m) is distributed in the hope that it will 
## be useful, but WITHOUT ANY WARRANTY; without even the implied
## warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
## PURPOSE.  See the GNU General Public License for more
## details.
##
## You should have received a copy of the GNU General Public
## License along with Octave; see the file COPYING.  If not,
## see <http://www.gnu.org/licenses/>.

## usage: X = jacobi (A, B, it, ex, init)
##
## Solve a linear system using Jacobi method. Parameter <A> is 
## coeficient matrix, <B> is the result vector, <it> is the 
## maximum number of iterations (used as stop criteria), <ex> 
## is the number of exact digits (stop criteria), and <init>
## is the partial solution vector (used as partial results for
## the first iteration). One may ommit the <init> param, which
## the default is zeroes(column(a), rows(a)) -- see columns, 
## rows, and zeroes functions.
##
## Example:
##
## A = [
##   10   -1    2    0
##   -1   11   -1    3
##    2   -1   10   -1
##    0    2   -1    8]
##
## B = [ 
##    6
##   25
##  -11
##   15]
##
## X = jacobi(A, B, 10, 6)
##
## >> ans = [
##   0.98827
##   1.92704
##  -0.97785
##   1.27101 
## ]

## Author: Anderson R. P. Domingues
## Keywords: linear systems jacobi 
## Maintainer: Anderson R. P. Domingues
## Email: anderson.domingues@acad.pucrs.br

function retval = row_swap(A, r1, r2)



endfunction


function retval = jacobi(a, b, it, init = ones(columns(a), rows(a)))

	%percorre as colunas de A
	for i = 1 : columns(a);
		
 
    a(1, i)	
	endfor

	retval = a\b;
endfunction

%entrada da matriz de coeficientes
A = [
   10   -1    2    0
   -1   11   -1    3
    2   -1   10   -1
    0    2   -1    8]

%entrada do vetor solucao    
B = [ 
    6
   25
  -11
   15]
   
%resolucao usando o solver do octave
X = A\B

%funcao para o metodo de Jacobi


X = jacobi(A, B);