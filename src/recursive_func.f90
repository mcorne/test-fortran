! https://www.tutorialspoint.com/fortran/fortran_procedures.htm

program recursive_func
   implicit none
   interface
      recursive function myfactorial(n) result(fac)
         integer, intent(in)::n
         integer::fac
      end function myfactorial
   end interface

   integer::number, result

   print *, 'Enter n:'
   read *, number
   result = myfactorial(number)
   print *, result
end program recursive_func

recursive function myfactorial(n) result(fac)
   implicit none
   integer, intent(in)::n
   integer::fac

   select case (n)
   case (0:1)
      fac = 1
   case default
      fac = n*myfactorial(n - 1)
   end select
end function myfactorial
