# next

[1, 2, 3, 4, 5].each do |i|
  next if i%2==0
  puts i.to_s + " is an odd number"
end

1.upto(5) do |i|
  next if i%2==0
  puts i.to_s + " is an odd number"
end

# break also returns a value
i = 0
lastNum = while i < 10 do
            i+=3
            break i if i > 7
          end
puts "lastNum: " + lastNum.to_s



puts "Will store 3 positive numbers"
array = Array.new
i=0
while i < 3
  print "Plase enter a positive number"
  input = gets.to_i
  redo if (input < 0)
  i+=1
  array.push(input)
end
puts "positive numbers: " + array.to_s