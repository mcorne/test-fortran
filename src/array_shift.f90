!https://www.tutorialspoint.com/fortran/manipulation.htm

program array_shift
   implicit none

   interface
      subroutine write_array_with_prefix(prefix, array)
         character(*) :: prefix
         real, dimension(:) :: array
      end subroutine write_array_with_prefix
   end interface

   real, dimension(1:6) :: a = (/21.0, 22.0, 23.0, 24.0, 25.0, 26.0/)
   real, dimension(1:6) :: x, y

   call write_array_with_prefix('a: ', a)

   x = cshift(a, shift=2)
   call write_array_with_prefix('x: ', x)

   y = cshift(a, shift=-2)
   call write_array_with_prefix('y: ', y)

   x = eoshift(a, shift=2)
   call write_array_with_prefix('x: ', x)

   y = eoshift(a, shift=-2)
   call write_array_with_prefix('y: ', y)
end program array_shift

subroutine write_array_with_prefix(prefix, array)
   character(*) :: prefix
   real, dimension(:) :: array

   write (*, '(A)', advance='no') prefix
   write (*, 10) array

10 format(1x, 6f6.1)
end subroutine write_array_with_prefix
