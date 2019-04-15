# this method will execute a block
def execute_block
  puts 'pre-block'
  # yield will execute the block passing these parameters
  yield a_param: 'value'

  puts 'post-block'
end

# this block ignores any parameters (if they exist)
execute_block do
  puts 'block executing'
end
# pre-block
# block executing
# post-block

puts
# this block uses the parameters
execute_block do |v|
  puts "block executing: kvps: #{v}"
end
# pre-block
# block executing: kvps: {:a_param=>'value'}
# post-block
