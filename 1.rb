mults = []
(0..999).each do |num|
  if num % 3 == 0 or num % 5 == 0
    mults << num
  end
end
puts mults.inject(:+)
