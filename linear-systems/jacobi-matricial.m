## Copyright (C) 2019 Anderson Domingues
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} jacobi-matricial (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Anderson Domingues <adomingues@gaphl20>
## Created: 2019-05-16

A = [ 1 2 3; 4 5 6; 7 8 9]
%A =
%
%   1   2   3
%   4   5   6
%   7   8   9

B = [1; 2; 3]
%B =
%
%   1
%   2
%   3

%>> A\B
%warning: matrix singular to machine precision
ans =

  -0.055556
   0.111111
   0.277778

x = ans

x =

  -0.055556
   0.111111
   0.277778

%>> A * x
% ans = 
%   1
%   2
%   3

xi = [0; 0; 0]
xi = (-(D + E)^-1 * F) * xi + (D+E)^-1 * B