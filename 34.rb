def factorial(num)
  return 1 if num == 0
  mem = num
  while num-1 >1
    num -= 1
    mem = mem*num
  end
  return mem
end

def digit_fact_sum(num)
  num_s = num.to_s
  sum = 0
  (1..num_s.length).each do |i|
    sum += factorial(num_s[i-1].to_i)
  end
  return sum
end

cool_nums = []

(3..1000000).each { |x| cool_nums << x if x == digit_fact_sum(x) }

puts cool_nums.inject(:+)
  
