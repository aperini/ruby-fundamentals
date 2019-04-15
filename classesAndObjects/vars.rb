lander_count = 10

def inner_variable
  lander_count = 5
  puts lander_count
end

inner_variable
puts lander_count

$global_var = 1
puts $global_var

nil_val = nil

puts nil_val.class
puts nil_val
