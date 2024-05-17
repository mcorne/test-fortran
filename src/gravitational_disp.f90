! https://www.tutorialspoint.com/fortran/fortran_constants.htm

program gravitational_disp
   implicit none

   real :: displacement
   real :: inital_speed
   real :: time
   real, parameter :: g = 9.81

   time = 5.0
   inital_speed = 50.0

   displacement = inital_speed*time - g*(time**2)/2

   print *, "Time = ", time
   print *, 'Displacement = ', displacement
end program gravitational_disp
