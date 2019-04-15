# types of exception:
# Exception
#   |-StandardError
#      |-RuntimeError

# the use of RESCUE

# for a begin-end block
def launch1
  begin
    execute
  rescue
    puts 'L1- Exception intercepted'
    return false
  end
  'L1 - launched ok'
end

# or a whole method
def launch2
  execute
  'L2 - launched ok'
rescue
  puts 'L2- Exception intercepted'
  false
end

# or by type
def launch3
  execute
  'L3 - launched ok'
rescue StandardError => e
  puts 'L3- Exception intercepted: ' + e.message
  false
ensure
  puts 'L3- always executes'
  # ENSURE: to close resources
end

def execute
  1.upto(2) do |i|
    # random boolean
    if [true, false, false, false].sample
      # this raises an error
      puts 'i= ' + i
    end
  end
end

puts launch1
puts launch2
puts launch3
