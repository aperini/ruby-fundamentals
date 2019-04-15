# redefining a constant produces a warning
MAX_SPEED = 1000

# warning: already initialized constant MAX_SPEED
MAX_SPEED = 10

# Freezing it
TYPES = ['abc']
TYPES.freeze

# RTE  can't modify frozen Array (FrozenError)
# TYPES << 'def'

puts "Is TYPES frozen? #{TYPES.frozen?}"

# but... modifying an object inside a frozen object is ok
TYPES[0].upcase!
puts TYPES[0] # ABC

# A constant defined outside a class or module is visible throughout the program
# But to reference a constant from a class, we use the :: operator
# document this class
class ClassA
  MAX_SPEED = 1000
end

puts ClassA::MAX_SPEED
