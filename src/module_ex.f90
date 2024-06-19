module constants
   implicit none
   real, parameter, private::pi = 3.1415926536
   real, parameter, private :: e = 2.7182818285

contains
   subroutine show_const()
      print *, "pi = ", pi
      print *, "e = ", e
   end subroutine

   function e_power_x(x) result(ePx)
      implicit none
      real::x
      real::ePx
      ePx = e**x
   end function e_power_x

   function area_circle(r) result(a)
      implicit none
      real::r
      real::a
      a = pi*r**2
   end function area_circle
end module constants

program module_ex
   use constants
   implicit none
   call show_const()
   print *, "e raised to the power of 2 = ", e_power_x(2.0)
   print *, 'area of a circle with radius 7 = ', area_circle(7.0)
end program module_ex
