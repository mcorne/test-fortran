! https://www.tutorialspoint.com/fortran/location.htm

program array_location
   implicit none

   real::a(6) = [21.0, 12.0, 33.0, 24.0, 15.0, 16.0]
   print *, 'maxloc ', maxloc(a)
   print *, 'maxloc ', maxloc(a, [.true., .true., .false., .true., .true., .true.])
   print *, 'minloc ', minloc(a)
   print *, 'minloc ', minloc(a, [.true., .false., .false., .true., .true., .true.])
end program array_location
