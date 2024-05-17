!https://www.tutorialspoint.com/fortran/fortran_data_types.htm

program select_case
   implicit none

   character :: grade = "B"
   integer :: marks = 78

   select case (grade)
   case ('A')
      print *, "Excellent"
   case ('B')
      print *, "Good"
   case ('C')
      print *, "OK"
   case default
      print *, "Bad"
   end select

   select case (marks)
   case (91:100)
      print *, "Excellent!"
   case (81:90)
      print *, "Very good!"
   case (0:80)
      print *, "Well done!"
   case default
      print *, "Invalid marks"
   end select

end program select_case
