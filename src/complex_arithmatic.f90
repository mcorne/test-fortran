! https://www.tutorialspoint.com/fortran/fortran_numbers.htm

program complex_arithmatic
   implicit none

   complex, parameter:: i = (0, 1)
   complex::x, y, z
   x = (7, 8)
   y = (5, -7)
   z = x + y
   print *, "z = x + y", z
   z = x - y
   print *, "z = x - y", z
   z = x*y
   print *, "z = x * y", z
   z = x/y
   print *, "z = x / y", z
end program complex_arithmatic
