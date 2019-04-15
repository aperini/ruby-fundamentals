# document this class
class Spaceship
  # this creates get/set functions for the destination symbol (symbol!!)
  attr_accessor :destination
end

puts '------------'
spaceship = Spaceship.new
puts spaceship.destination
spaceship.destination = 'Earth'
puts spaceship.destination

# document this class
class Spaceship2
  # this also creates get/set functions for the symbol :name, but separately
  attr_reader :name
  attr_writer :name
end

puts '------------'
spaceship = Spaceship2.new
puts spaceship.name
spaceship.name = 'my name'
puts spaceship.name

#######################
# document this class
class Spaceship3
  attr_reader :name
  attr_writer :name

  def fake_erase_name
    # this is just a local variable
    name = ''
  end

  def real_erase_name
    self.name = ''
  end
end

puts '------------'
spaceship = Spaceship3.new
spaceship.name = 'my name'
spaceship.fake_erase_name
puts ':name = ' + spaceship.name
spaceship.real_erase_name
puts ':name = ' + spaceship.name
