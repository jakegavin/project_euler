fib = [1,2]
new_fib = 3
while new_fib < 4000000 
  fib << new_fib
  new_fib = fib[-1]+fib[-2]
end
e_fib = fib.select { |num| num.even? }
puts e_fib.inject(:+)

