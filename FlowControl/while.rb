def cruiserSpeed?(speed)
  case
  when speed < 5
    puts "not cruiser speed"
    false
  when speed >= 5
    puts "cruiser speed"
    true
  end
end

def accelerate(speed)
  speed += 1
  puts "accelerating to " + speed.to_s
  speed
end

puts "--until--"
speed = 0
until cruiserSpeed?(speed)
  speed = accelerate(speed)
end

puts "--until 2--"
speed = 0
speed = accelerate(speed) until cruiserSpeed?(speed)

puts "--until 3--"
speed = 0
begin
  # block of commands
  speed = accelerate(speed)
end until cruiserSpeed?(speed)

puts "--while--"
speed = 0
while !cruiserSpeed?(speed)
  speed = accelerate(speed)
end

puts "--while 2--"
speed = 0
speed = accelerate(speed) while !cruiserSpeed?(speed)

puts "--while 3--"
speed = 0
begin
  # block of commands
  speed = accelerate(speed)
end while !cruiserSpeed?(speed)

puts "--while do--"
speed = 0
while !cruiserSpeed?(speed) do speed = accelerate(speed) end