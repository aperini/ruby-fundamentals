
# If/Else, loops, Begin/End DON'T introduce scope
if true
  a = 10
end

puts a



# Blocks INTRODUCE scope
1.upto(10) do |i|
  b = i
end

#error (undefined variable)
#puts b
#puts i