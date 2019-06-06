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

## usage: X = jacobi(A, B, RTOL, MAXIT, X0)
##
## Solve a linear system using Jacobi method. Parameter <A> is 
## coeficient matrix, <B> is the result vector, <MAXIT> is the 
## maximum number of iterations (used as stop criteria), <RTOL> 
## is the realtive tolerance (stop criteria), and <X0> is the 
## partial solution vector (used as initial guess). One may ommit
## <MAXIT>, <RTOL>, and <X0> param, which defaults to 20, 1e-6
## and ones(column(a), rows(a)), respectively.
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
##
## References:
## 1. R. Freund and N. Nachtigal, ‘QMR: a quasi-minimal residual
##    method for non-Hermitian linear systems’, Numerische
##    Mathematik, 1991, 60, pp.  315-339.
##
## 2. R. Barrett, M. Berry, T. Chan, J. Demmel, J. Donato, J.
##    Dongarra, V. Eijkhour, R. Pozo, C. Romine, and H. van der
##    Vorst, ‘Templates for the solution of linear systems: Building
##    blocks for iterative methods’, SIAM, 2nd ed., 1994.

## Author: Anderson R. P. Domingues
## Keywords: linear systems jacobi 
## Maintainer: Anderson R. P. Domingues
## Email: anderson.domingues@acad.pucrs.br
__JACOBI_METHOD_TEST = 0;

# NOTA: substituam as informações do cabeçalho com 
# os dados de vocês. Se vocês NÃO desejam que eu 
# use o código de vocês para futuras implementações,
# removam o cabeçalho (Tudo acima da linha 61). 

# esta é a assinatura do método, não alterar
function retval = jacobi(A, B, MAXIT = 20, RTOL = 1e-6, X0 = ones(columns(a)))

	#Implementar seu método a partir desta linha.
	#Idealmente, não declarem variáveis fora do corpo do método senão para fins de teste.

	#Utilizem o comando abaixo para testar a solução de vocês. Se 
	#vocês implementaram corretamente, o resultado do método deve 
	#ser "parecido" com a saída do Octave para o comando abaixo. 
	retval = a\b;
endfunction

# Fiz essa função para que vocês usem de exemplo
# para criar os testes de vocês. Já possui um sistema
# de "brinde", que podem usar para testar os métodos.
# NOTA: antes de tudo, confiram se a norma e estabilidade
# do sistemas estão ok, pois o funcionamento dos métodos de 
# vocês depende disso. Confiram também para o sistema abaixo,
# pois não garanto que ele possua essas propriedades.
if(__JACOBI_METHOD_TEST == 1)
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
   
  %funcao para o metodo de Jacobi
  X = jacobi(A, B);
  
  #teste para o método de Gauss Seidel
  X = seidel(A, B)

endif
