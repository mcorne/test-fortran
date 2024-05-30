! https://www.tutorialspoint.com/fortran/fortran_derived_data_types.htm

program derived_data_type
   implicit none

   type t_book
      character(50)::title
      character(50)::author
      character(50)::subject
      integer::book_id
   end type

   type(t_book), dimension(2)::list

   list(1)%title = "The Great Gatsby"
   list(1)%author = "F. Scott Fitzgerald"
   list(1)%subject = "American Literature"
   list(1)%book_id = 1
   list(2) = t_book("To Kill a Mockingbird", "Harper Lee", "American Literature", 2)

   print *, list
end program derived_data_type
