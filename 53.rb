def factorial(num)
  return 1 if num == 0
  (1..num).inject(:*)
end

def combi(n, r)
  factorial(n)/(factorial(r)*factorial(n-r))
end

big = []

(1..100).each do |a|
  a.downto(1).each do |b|
    if combi(a,b) > 1000000
      big << [a, b, combi(a,b)] 
    end
  end
end

puts big.length
