def print_once
  yield
end
def print_twice
  yield
  yield
end

puts "-----"
print_once { puts "Block is being run" }
puts "-----"
print_twice { puts "Block is being run" }