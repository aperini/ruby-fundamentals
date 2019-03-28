class Spaceship

  def launch(destination)
    @destination = destination
    # go to destination
  end

  # instance variables are visible through methods
  def destination
    @destination
  end
end

spaceship = Spaceship.new


spaceship.launch "Moon"
puts "destination: " + spaceship.destination

puts spaceship.inspect

# p inspects and outputs an object
p spaceship

