! https://www.tutorialspoint.com/fortran/construction.htm

program array_construction
   implicit none

   interface
      subroutine write_array(name, array, line_feed)
         character(*):: name
         class(*), dimension(:, :) :: array
         logical, optional:: line_feed
      end subroutine write_array
   end interface

   real, dimension(2, 3):: tsource, fsource, result
   logical, dimension(2, 3)::mask
   real, dimension(:), allocatable :: packed_array
   real, dimension(:, :), allocatable :: spread_array

   tsource = reshape([35, 23, 18, 28, 26, 39], [2, 3])
   fsource = reshape([-35, -23, -18, -28, -26, -39], [2, 3])
   mask = reshape([.true., .false., .false., .true., .false., .false.], [2, 3])
   result = merge(tsource, fsource, mask)
   packed_array = pack(tsource, mask)
   spread_array = spread([35, 23, 18, 28, 26, 39], dim=2, ncopies=3)

   call write_array('tsource', tsource)
   call write_array('fsource', fsource)
   call write_array('mask', mask)
   call write_array('result', result)
   call write_array('packed_array', reshape(packed_array, [1, size(packed_array)]))
   call write_array('spread_array', spread_array)

end program array_construction

subroutine write_array(name, array, line_feed)
   character(*):: name
   class(*), dimension(:, :) :: array
   logical, optional:: line_feed
   print *, name
   do i = lbound(array, 1), ubound(array, 1)
      select type (array)
      type is (integer)
         print *, (array(i, j), j=lbound(array, 2), ubound(array, 2))
      type is (logical)
         print *, (array(i, j), j=lbound(array, 2), ubound(array, 2))
      type is (real)
         print *, (array(i, j), j=lbound(array, 2), ubound(array, 2))
      class default
         print *, 'Unsupported array type'
      end select
   end do
   if (present(line_feed) .and. line_feed) then
      print *, ''
   end if
end subroutine write_array

