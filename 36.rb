pals = []
(1..1000000).each do |num|
  pals.push(num) if num.to_s == num.to_s.reverse and num.to_s(2) == num.to_s(2).reverse
end
puts pals.inject(:+)
