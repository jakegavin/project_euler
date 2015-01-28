fib = [1,1,2]
new_fib = 3
while new_fib.to_s.length < 1000 
  fib << new_fib
  new_fib = fib[-1]+fib[-2]
end
puts fib.length+1
