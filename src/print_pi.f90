! https://www.tutorialspoint.com/fortran/fortran_basic_input_output.htm

program print_pi
   implicit none

   real::pi = 3.141592653589793238
   character(len=15) :: first_name

   print "(f6.3)", pi
   print "(f6.3)", -pi
   print "(f10.7)", pi
   print "(f2.15)", pi
   print "(e16.4)", pi
   print "(e16.11)", pi
   print "(e16.12)", pi

   print *, ' Enter your first name.'
   print *, ' Up to 20 characters, please'
   read *, first_name
   print "(1x,a)", first_name
   print "(10x,a)", first_name
end program print_pi
