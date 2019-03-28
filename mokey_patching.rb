class Probe
  def deploy
    puts "Deploying"
  end
end

probe = Probe.new
probe.deploy

class Probe
  def deploy
    puts "Deploying...new deploy"
  end
end

probe.deploy

#######################

class String
  def space_out
    chars.join(" ")
  end
  def size
    "won't tell you"
  end
end
puts "Fire".space_out.space_out
puts "A very long string".size

class String
  def size
    "redefining it again"
  end
end

puts "Fire".space_out
puts "Fire".size

