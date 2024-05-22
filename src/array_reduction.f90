! https://www.tutorialspoint.com/fortran/reduction.htm

program array_reduction
   implicit none

   real::a(3, 2) = reshape([5, 9, 6, 10, 8, 12], [3, 2])
   logical::mask(3, 2) = reshape([.TRUE., .FALSE., .TRUE., &
                                  .FALSE., .FALSE., .TRUE.], [3, 2])
   interface
      subroutine print_matrix(matrix, line_feed)
         real, dimension(:, :), intent(in) :: matrix
         logical, intent(in), optional:: line_feed
      end subroutine print_matrix
   end interface

   call print_matrix(a)

   print *, 'all ', all(a > 5)

   print *, 'any ', any(a >= 10)
   print *, 'any ', any(a >= 10, 1)
   print *, 'any ', any(a >= 10, 2)

   print *, 'count ', count(a >= 10)
   print *, 'count ', count(a >= 10, 1)
   print *, 'count ', count(a >= 10, 2)

   print *, mask
   print *, 'maxval ', maxval(a)
   print *, 'maxval ', maxval(a, mask=mask)
   print *, 'maxval ', maxval(a, 1, mask)
   print *, 'maxval ', maxval(a, 2, mask)

   print *, 'minval', minval(a)
   print *, 'product', product(a)
   print *, 'sum', sum(a)
end program array_reduction

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
