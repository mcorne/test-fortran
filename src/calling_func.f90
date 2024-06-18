! https://www.tutorialspoint.com/fortran/fortran_procedures.htm

program calling_func
   implicit none

   interface
      function area_of_circle(r)
         real, intent(in) :: r
      end function area_of_circle
   end interface
   real :: a
   a = area_of_circle(2.0)

   Print *, "The area of a circle with radius 2.0 is"
   Print *, a

end program calling_func

function area_of_circle(r)
   implicit none
   real, intent(in) :: r
   real :: area_of_circle
   real :: pi = 4*atan(1.0)
   area_of_circle = pi*r**2

end function area_of_circle
