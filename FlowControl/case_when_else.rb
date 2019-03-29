value = 1

# case when for values
signal = case value
         when -1 then "negative"
         when 0 then "positive"
         when 1 then "positive"
         else "undetermined"
           #else serves as a catch all clause
         end

puts "signal " + signal

# case when for objects
class Probe
end
class Thruster
end

case Thruster.new
when Probe
  puts "it's a Probe instance"
when Thruster
  puts "it's a Thruster instance"
else
  puts "instance of another class"
end

# case for conditions
case
when (0 > 1)
  puts "something went wrong with math"
when (1 > 0)
  puts "math is ok"
end
