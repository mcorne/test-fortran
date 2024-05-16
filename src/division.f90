! https://www.tutorialspoint.com/fortran/fortran_data_types.htm

program division

   implicit none

   real :: p, q, real_res
   integer :: i, j, int_res

   p = 2.0
   q = 3.0
   i = 2
   j = 3

   real_res = p/q
   int_res = i/j

   print *, real_res
   print *, int_res

end program division
