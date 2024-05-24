! https://www.tutorialspoint.com/fortran/fortran_dynamic_arrays.htm

program where_statement
   implicit none

   interface
      subroutine print_array(name, array)
         character(*)::name
         integer, dimension(:, :)::array
      end subroutine print_array
   end interface

   integer::a(3, 5), i, j

   a = reshape([((j - i, j=1, 5), i=1, 3)], [3, 5], order=[2, 1])
   call print_array('a:', a)

   where (a < 0)
      a = 1
   elsewhere
      a = 5
   end where
   call print_array('a:', a)

end program where_statement

subroutine print_array(name, array)
   character(*)::name
   integer, dimension(:, :)::array
   print *, name
   do i = 1, size(array, 1)
      print *, (array(i, j), j=1, size(array, 2))
   end do
end subroutine print_array
