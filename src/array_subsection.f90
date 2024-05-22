! https://www.tutorialspoint.com/fortran/fortran_arrays.htm

program array_subsection
   implicit none

   real, dimension(10) :: a, b

   a(1:7) = 5.0 ! a(1) to a(7) assigned 5.0
   a(8:) = 0.0  ! rest are 0.0
   b(2:10:2) = 3.9 ! every second entry from 2 to 10 assigned to 3.9
   b(1:9:2) = 2.5

   print *, a
   print *, b
end program array_subsection

subroutine fill_array(a)
   implicit none
   integer, dimension(:), intent(out) :: a

   integer :: i, array_size
   array_size = size(a)

   do i = 1, array_size
      a(i) = i
   end do

end subroutine fill_array
