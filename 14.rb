def collatz(s_num)
  steps = [s_num]
  while (steps[-1] != 1) do
    if steps[-1] % 2 == 0
      steps << steps[-1]/2
    elsif steps[-1] % 2 == 1
      steps << steps[-1]*3+1
    end
  end
  return steps
end

max = {s_num: 1, length: 1}
(1..1000000).each do |i|
  if collatz(i).length >= max[:length]
    max[:s_num] = i
    max[:length] = collatz(i).length
  end
end

puts max

