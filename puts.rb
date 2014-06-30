def sum_of_multiples_three_and_five(n)
  count = 0
  for i in 1...n
    count += i if ((i % 3 == 0) or (i % 5 == 0))
  end
  puts count
end

sum_of_multiples_three_and_five(1000)  


def fib(a, b)
   a + b


  
