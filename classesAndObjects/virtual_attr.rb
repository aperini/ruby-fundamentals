class Spaceship
  # this creates get/set functions for the destination symbol (symbol!!)
  attr_accessor :destination
end

spaceship = Spaceship.new
puts spaceship.destination
spaceship.destination = "Earth"
puts spaceship.destination

#######################
puts "------------"
class Spaceship2
  # this also creates get/set functions for the name symbol (symbol!!) but separately
  attr_reader :name
  attr_writer :name
end

spaceship = Spaceship2.new
puts spaceship.name
spaceship.name = "my name"
puts spaceship.name

#######################
puts "------------"
class Spaceship3
  attr_reader :name
  attr_writer :name

  def fake_erase_name
    # this is just a local variable
    name = ""
  end

  def real_erase_name
    self.name = ""
  end
end

spaceship = Spaceship3.new
spaceship.name = "my name"
spaceship.fake_erase_name
puts "name: " + spaceship.name
spaceship.real_erase_name
puts "name: " + spaceship.name
