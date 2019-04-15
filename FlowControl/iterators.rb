# infinite loop (while true)
i = 0
loop do
  puts i += 1
  break if i == 10
end

# upto
1.upto(5) do |i|
  p i
end

'A'.upto('d') do |i|
  p i
end

# downto
5.downto(1) do |i|
  p i
end

# times
3.times { puts 'please respond' }

# step
0.step(10, 2) { |i| puts i }
