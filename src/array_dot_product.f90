! https://www.tutorialspoint.com/fortran/vector_and_matrix_multiplication.htm

program array_dot_product
   implicit none

   real, dimension(5)::a, b, c
   integer::i
   a = [1, 2, 3, 4, 5]
   b = a*2

   print *, a
   print *, b
   print *, dot_product(a, b)

   c = [(2*a(i), i=1, size(a))] ! implied loop
   print *, c

end program array_dot_product
