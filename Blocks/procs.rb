# instantiation
puts "Lambdas are defined with -> {} and procs with Proc.new {}."

# A lambda is just a special Proc object

puts "Procs don't care about the correct number of arguments, while lambdas will raise an exception."
proc = Proc.new { |x,y| puts "I'm a Proc. I don't care about arguments!" }
proc.call
proc.yield
proc.()
proc.[]
proc.===

my_lambda = -> { puts "This is a lambda. I care" }
my_lambda.call
my_lambda.yield
my_lambda.()
my_lambda[]
my_lambda.===

times_two = ->(x) { puts x * 2 }
times_two.call(10) # 20
# times_two.call without params would cause an error:

# the use of return
puts "Lambdas return from the lambda itself while Procs return from the current method."

my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"


my_proc = Proc.new { return 1 }
# puts "Proc result: #{my_proc.call}"
# calling this Proc finishes the program

# If the proc was inside a method, then calling return would be equivalent to returning from that method
def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
call_proc # Prints "Before proc" but not "After proc"
