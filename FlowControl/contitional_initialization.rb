class Spaceship
  def initialize(type)
    @type = type
  end
end

# will execute if it doesn't exist or it evaluates to false
ship1 ||= Spaceship.new("ship1")

p ship1

# same behaviour
# will execute if ship2 doesn't exist or it evaluates to false
ship2 = Spaceship.new("ship2") unless ship2

p ship2

# will only evaluate the second part if the first doesn't exist or it evaluates to false
ship3 = false
ship3 || ship3 = Spaceship.new("ship3")

p ship3