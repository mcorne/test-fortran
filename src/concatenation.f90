! https://www.tutorialspoint.com/fortran/fortran_characters.htm

program concatenation
   implicit none

   character(15):: surname, firstname
   character(6):: title
   character(40)::name
   character(25):: greetings

   title = 'Mr. '
   firstname = 'Rwan'
   surname = 'Aktinson'
   name = trim(title)//' '//trim(firstname)//' '//trim(surname)
   greetings = 'A big hello'

   print *, 'Here is ', name
   print *, greetings
   print *, greetings(7:11)
end program concatenation
