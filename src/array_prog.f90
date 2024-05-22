! https://www.tutorialspoint.com/fortran/fortran_arrays.htm

program array_prog
   implicit none

   real::numbers(5)
   integer::matrix(3, 3)

   numbers = (/1, 2, 3, 4, 5/)
   print *, numbers

   call fill_array(matrix)
   print *, matrix
   print *, 'rank', rank(matrix)
   print *, 'shape', shape(matrix)
   print *, 'size', size(matrix)
end program array_prog

subroutine fill_array(a)
   implicit none

   integer, intent(out)::a(3, 3)
   integer::i, j

   do i = 1, 3
      do j = 1, 3
         a(i, j) = i + j
      end do
   end do
end subroutine fill_array
