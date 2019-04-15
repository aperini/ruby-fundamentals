# AND and OR are commonly used for flows control
# AND
def engine?
  puts 'hasEngine?'
  true
end

def fuel?
  puts 'fuel?'
  true
end

def launch
  puts 'launching!'
end

def abort
  puts 'abort!'
end

# AND
if engine? and fuel?
then
  launch
else
  abort
end

# OR
def engine_works?
  puts 'engine failed'
  false
end

def restart_engine?
  puts 'restart failed'
  false
end

def call_emergency
  puts 'calling emergency'
end

# using OR
puts 'checking engine'
if !engine_works? then
  restart_engine? or call_emergency
end

# using UNLESS
puts 'checking engine again'
if !engine_works? then
  call_emergency unless restart_engine?
end
