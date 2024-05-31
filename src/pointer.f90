! https://www.tutorialspoint.com/fortran/fortran_pointers.htm

program pointer
   implicit none

   integer, pointer::p1
   integer, target::t1, t2

   allocate (p1)
   p1 = 1
   print *, "p1: ", p1
   deallocate (p1)

   p1 => t1
   p1 = 1
   print *, "p1: ", p1
   print *, "t1: ", t1

   p1 = p1 + 4
   print *, "p1: ", p1
   print *, "t1: ", t1

   t1 = 8
   print *, "p1: ", p1
   print *, "t1: ", t1

   nullify (p1)
   print *, "p1: ", p1
   print *, "t1: ", t1

   p1 => t2
   print *, "associated(p1): ", associated(p1)
   print *, "associated(p1, t1): ", associated(p1, t1)
   print *, "associated(p1, t2): ", associated(p1, t2)

   Print *, "p1: ", p1
   Print *, "t2: ", t2

   p1 = 10
   Print *, "p1: ", p1
   Print *, "t2: ", t2
end program pointer
