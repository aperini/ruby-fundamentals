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
    puts 'launch1- Exception intercepted'
    return false
  end
  'launch1 - launched ok'
end

# or a whole method
def launch2
  execute
  'launch2 - launched ok'
rescue
  puts 'launch2 - Exception intercepted'
  false
end

# or by type
def launch3
  execute
  'launch3 - launched ok'
rescue StandardError => e
  puts 'launch3 - Exception intercepted: ' + e.message
  false
ensure
  puts 'launch3 - always executes'
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
