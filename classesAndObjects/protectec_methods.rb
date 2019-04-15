# document this class
class Spaceship
  attr_reader :speed
  protected :speed

  def initialize
    @speed = 'Slow'
  end

  def speed_matches?(other)
    speed == other.speed
  end
end

# document this class
class FastSpaceship < Spaceship
  def initialize
    @speed = 'Fast'
  end
end

s = Spaceship.new
f = FastSpaceship.new

# can't call directly a protected variable
# puts s.speed == f.speed

# but objects of same type call access protected variables
puts s.speed_matches? f
