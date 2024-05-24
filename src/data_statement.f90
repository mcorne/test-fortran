! https://www.tutorialspoint.com/fortran/fortran_dynamic_arrays.htm

program data_statement
   implicit none

   interface
      subroutine print_array(array)
         integer, dimension(:, :)::array
      end subroutine print_array
   end interface

   integer::a(5), b(3, 3), c(10), i
   data a/7, 8, 9, 10, 11/
   data b(1, :)/1, 1, 1/
   data b(2, :)/2, 2, 2/
   data b(3, :)/3, 3, 3/
   data(c(i), i=1, 10, 2)/4, 5, 6, 7, 8/
   data(c(i), i=2, 10, 2)/5*2/

   print *, 'a: ', a
   print *, 'b:'
   call print_array(b)
   print *, 'c: ', c
end program data_statement

subroutine print_array(array)
   integer, dimension(:, :)::array
   do i = 1, size(array, 1)
      print *, (array(i, j), j=1, size(array, 2))
   end do
end subroutine print_array
