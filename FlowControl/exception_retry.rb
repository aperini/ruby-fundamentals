def method
  execute
  puts 'success'
  true
rescue StandardError => e
  attempts ||= 0
  attempts += 1
  puts 'error'

  if attempts <= 1
    # restarts execution of block where error occurred
    retry
  else
    puts 'end retries'
    false
  end
end

def execute
  if [true, false].sample
    # error
    puts '' + 1
  end
end

puts method
