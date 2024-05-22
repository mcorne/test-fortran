! https://www.tutorialspoint.com/fortran/fortran_arrays.htm

program array_to_procedure
   implicit none
   integer, dimension(10) :: my_array

   interface
      subroutine fill_array(a)
         integer, intent(out) :: a(:)
      end subroutine fill_array

      subroutine print_array(a)
         integer :: a(:)
      end subroutine print_array
   end interface

   call fill_array(my_array)
   call print_array(my_array)

end program array_to_procedure

subroutine fill_array(a)
   implicit none
   integer, intent(out) :: a(:)

   integer :: i

   do i = 1, size(a)
      a(i) = i
   end do

end subroutine fill_array

subroutine print_array(a)
   implicit none

   integer :: a(:)
   integer :: i

   do i = 1, size(a)
      Print *, a(i)
   end do

end subroutine print_array
