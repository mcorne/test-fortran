! https://www.tutorialspoint.com/fortran/fortran_logical_operators.htm

program logical_op
   implicit none

   logical :: a, b

   a = .true.
   b = .false.

   if (a .and. b) then
      print *, "Line 1 - Condition is true"
   else
      print *, "Line 1 - Condition is false"
   end if

   if (a .eqv. 2 == (1 + 1)) then
      print *, "a equivalent to 2 == (1+1)"
   else
      print *, "a  not equivaent to 2 == (1+1)"
   end if

end program logical_op
