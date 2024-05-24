! https://www.tutorialspoint.com/fortran/fortran_dynamic_arrays.htm

program dynamic_array
   implicit none

   interface
      subroutine print_array(array)
         integer, dimension(:, :)::array
      end subroutine print_array
   end interface

   integer, dimension(:, :), allocatable::darray
   integer::s1, s2, i, j

   print *, 'Enter size of array:'
   read *, s1, s2

   allocate (darray(s1, s2))
   darray = reshape([((i*j, j=1, s2), i=1, s1)], [s1, s2])
   call print_array(darray)

   deallocate (darray)
end program dynamic_array

subroutine print_array(array)
   integer, dimension(:, :)::array
   do i = 1, size(array, 1)
      print *, (array(i, j), j=1, size(array, 2))
   end do
end subroutine print_array
