! https://www.tutorialspoint.com/fortran/fortran_nested_loop.htm

program nested_loop
   implicit none

   integer:: i, j, k
   do i = 1, 3
      do j = 1, 3
         do k = 1, 3
            if (j == 2) then
               print *, "skip (i, j, k):", i, j, k
               cycle
            end if
            if (i == 3 .and. k == 2) then
               print *, "exit at (i, j, k):", i, j, k
               exit
            end if
            print *, "print (i, j, k):", i, j, k
         end do
      end do
   end do
end program nested_loop
