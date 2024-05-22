! https://www.tutorialspoint.com/fortran/vector_and_matrix_multiplication.htm

program mat_mul_product
   implicit none

   integer, dimension(3, 3)::a, b, c
   integer::i, j

   interface
      subroutine print_matrix(matrix, line_feed)
         integer, dimension(:, :), intent(in) :: matrix
         logical, intent(in), optional:: line_feed
      end subroutine print_matrix
   end interface

   a = reshape([((i + j, i=1, 3), j=1, 3)], [3, 3])
   b = reshape([((i*j, i=1, 3), j=1, 3)], [3, 3])
   c = matmul(a, b)
   call print_matrix(a, .true.)
   call print_matrix(b, .true.)
   call print_matrix(c)
end program mat_mul_product

subroutine print_matrix(matrix, line_feed)
   integer, dimension(:, :), intent(in)::matrix
   logical, intent(in), optional:: line_feed
   integer:: i, j
   do i = 1, size(matrix, 1)
      print *, (matrix(i, j), j=1, size(matrix, 2))
   end do
   if (present(line_feed) .and. line_feed) then
      print *, ''
   end if
end subroutine print_matrix
