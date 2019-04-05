
# this method will execute a block
def execute_block
  puts "pre-block"

  # at this point the block passed will execute and can receive or not these parameters
  yield a_param: "value"

  puts "post-block"
end

# ignoring params
execute_block do
  puts "block executing"
end
# will output

# pre-block
# block executing
# post-block

puts
# receiving params
execute_block do |v|
  puts "block executing: kvps: #{v}"
end
# will output

# pre-block
# block executing
# post-block