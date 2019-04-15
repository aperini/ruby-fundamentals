# document this class
class Spaceship
  attr_reader :name

  def initialize(name)
    @name = name
  end

  # overrides the equality function
  def ==(other)
    @name == other.name
  end
end

ship1 = Spaceship.new 'A'
ship2 = Spaceship.new 'A'

puts ship1.equal? ship2 # false
puts ship1 == ship2 # true
