! https://www.tutorialspoint.com/fortran/manipulation.htm

program matrix_transpose
   implicit none

   interface
      subroutine write_matrix(matrix)
         integer :: matrix(:, :)
      end subroutine write_matrix
   end interface

   integer, dimension(3, 4) :: a
   integer, dimension(4, 3) :: b
   integer :: i, j

   do i = lbound(a, 1), ubound(a, 1)
      do j = lbound(b, 1), ubound(b, 1)
         a(i, j) = i + 10*j
      end do
   end do

   call write_matrix(a)
   b = transpose(a)
   call write_matrix(b)
end program matrix_transpose

subroutine write_matrix(matrix)
   integer :: matrix(:, :)
   write (*, *)
   do i = lbound(matrix, 1), ubound(matrix, 1)
      write (*, *) (matrix(i, j), j=lbound(matrix, 2), ubound(matrix, 2))
   end do
end subroutine write_matrix
