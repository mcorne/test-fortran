! https://www.tutorialspoint.com/fortran/fortran_file_input_output.htm

program output_data
   implicit none

   real, dimension(100)::x, y, p, q
   integer::i
   character(*), parameter::file = 'data1.dat'

   call delete_file(file)

   do i = 1, 100
      x(i) = i*0.1
      y(i) = sin(x(i))*(1 - cos(x(i)/3.0))
   end do

   open (1, file=file, status='new')
   do i = 1, 100
      write (1, *) x(i), y(i)
   end do
   close (1)

   open (1, file=file, status='old')
   do i = 1, 100
      read (1, *) p(i), q(i)
   end do
   close (1)

   do i = 1, 100
      write (*, *) p(i), q(i)
   end do

   call delete_file(file)
end program output_data

subroutine delete_file(file)
   logical :: exists
   character(*)::file
   integer :: stat, unit

   inquire (file=file, exist=exists)
   if (exists) then
      open (newunit=unit, file=file, iostat=stat)
      if (stat == 0) close (unit, status="delete", iostat=stat)
   end if
end subroutine delete_file
