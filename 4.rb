def is_pal?(num)
  num.to_s == num.to_s.reverse
end
max_pal = 0
a = 999
while a > 99
  b = 999
  while b > 99
    if is_pal?(a*b)
      max_pal = a*b if a*b > max_pal
    end
    b -= 1
  end
  a -= 1
end
puts max_pal
