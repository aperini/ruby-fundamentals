# AND and OR are cmmonly used for flows control

# AND
def hasEngine()
  puts "hasEngine"
  true
end

def hasFuel()
  puts "hasFuel"
  true
end

def launch()
  puts "launching!"
end

def abort()
  puts "abort!"
end

if hasEngine and hasFuel
then
  launch
  else
    abort
end

# OR
def engineWorks()
  puts "engine failed"
  false
end
def restartEngine()
  puts "restart failed"
  false
end
def callEmergency()
  puts "calling emergency"
end

# using OR
puts "checking engine"
if !engineWorks then
  restartEngine or callEmergency
end

# using UNLESS
puts "checking engine again"
if !engineWorks then
  callEmergency unless restartEngine
end