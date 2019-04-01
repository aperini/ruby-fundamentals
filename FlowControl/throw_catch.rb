numbers = 1..10

# a way with method
result = catch :abort do
  numbers.each do |n|
    puts n
    throw :abort, "number 7 found" if n == 7

  end
  "No problem found"
end

puts result


# another way with method
def evaluate(n)
  puts "evaluating number " + n.to_s
  throw( :except, "number 7 found" ) if n == 7
end

result = catch :except do
  numbers.each do |n|
    evaluate(n)
  end
  "No problem found"
end

puts result