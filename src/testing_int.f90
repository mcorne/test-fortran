!https://www.tutorialspoint.com/fortran/fortran_data_types.htm

program testing_int

   implicit none

   integer :: largeval
   integer(kind=1) :: veryshortval
   integer(kind=2) :: shortval
   integer(kind=4) :: longval
   integer(kind=8) :: verylongval
   integer(kind=16) :: veryverylongval

   print *, huge(veryshortval)
   print *, huge(shortval)
   print *, huge(longval)
   print *, huge(largeval)
   print *, huge(verylongval)
   print *, huge(veryverylongval)

end program testing_int
