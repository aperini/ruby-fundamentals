# Ruby does not support multiple inheritance directly but Ruby Modules have another wonderful use.
# At a stroke, they pretty much eliminate the need for multiple inheritance, providing a facility called a mixin.

module AirControl
  def measure_oxygen
    puts "measuring oxygen"
  end
end

class Spaceship
  # including this module brings all methods to this class
  include AirControl
end

ship = Spaceship.new
ship.measure_oxygen # measuring oxygen

module AirControl2

  def measure_oxygen
    puts "measuring oxygen 2"
  end
end

class Spaceship
  # this will override the method implementation
  include AirControl2
end

ship = Spaceship.new
ship.measure_oxygen # measuring oxygen2
