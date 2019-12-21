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
## Created: 2019-12-21

function score = wsum(A, B)

	accsum = 0;

	try
		for i = 1:length(A)
			accsum = accsum + A(i) * B(i); 
		endfor

	catch
		msg = lasterror.message;
		printf(msg);
	end_try_catch

	score = accsum;

endfunction

A = [1 2 3]
B = [1 3 3]

wsum(A, B)




