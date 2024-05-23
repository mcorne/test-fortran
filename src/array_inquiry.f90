! https://www.tutorialspoint.com/fortran/inquiry.htm

program array_inquiry
   implicit none

   real::a(5:7, 2:3) = reshape([5, 9, 6, 10, 8, 12], [3, 2])

   interface
      subroutine print_matrix(matrix, line_feed)
         real, dimension(:, :), intent(in) :: matrix
         logical, intent(in), optional:: line_feed
      end subroutine print_matrix
   end interface

   call print_matrix(a)

   print *, 'lbound ', lbound(a)
   print *, 'lbound ', lbound(a, 1)
   print *, 'lbound ', lbound(a, 2)
   print *, 'ubound ', ubound(a)
   print *, 'shape ', shape(a)
   print *, 'size ', size(a)
   print *, 'size ', size(a, 1)
   print *, 'size ', size(a, 2)
end program array_inquiry

subroutine print_matrix(matrix, line_feed)
   real, dimension(:, :), intent(in)::matrix
   logical, intent(in), optional:: line_feed
   integer:: i, j
   do i = 1, size(matrix, 1)
      print *, (matrix(i, j), j=1, size(matrix, 2))
   end do
   if (present(line_feed) .and. line_feed) then
      print *, ''
   end if
end subroutine print_matrix
