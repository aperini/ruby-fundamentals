# ordered collection os KVPs

# empty hash
puts h = {}

# keys are strings
puts h = { 'min' => 0, 'max' => 10 }

# shortcut
puts h = { min: 0, max: 10 }

puts "Hey, min value is #{h[:min]}, max value is #{h[:max]}"

# adding elements
h[:av] = 5
puts h

# specifying a DEFAULT VALUE = ZERO

# This returns always the same instance of the value
h = Hash.new(0)

# This returns always a NEW instance of the value
h = Hash.new { 0 }

h[:av] = 5
h[:max] = 10
puts h # {:av=>5, :max=>10}
puts h[:min] # 0

h.each { |v| print v.to_s } # [:av, 5][:max, 10]

puts
# separating keys and values
h.each { |k, v| puts "KEY: #{k} and VALUE: #{v}" }
# KEY: av and VALUE: 5  KEY: max and VALUE: 10

# All methods for enumerable/arrays will also work for hashes

puts h.values.reduce(:+) # 15
puts h.values.reduce(0) { |sum, v| sum + v } # 15
puts h.reduce(0) { |sum, (key, val)| sum + val } # 15
