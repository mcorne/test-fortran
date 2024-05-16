! https://www.tutorialspoint.com/fortran/fortran_variables.htm

program variable_testing
   implicit none

   integer :: total
   real :: average
   complex :: cx
   logical :: done
   character(len=80) :: message

   total = 20000
   average = 16666.67
   done = .true.
   message = "Hello world!"
   cx = (3.0, 5.0)

   print *, total
   print *, average
   print *, done
   print *, message
   print *, cx

end program variable_testing
