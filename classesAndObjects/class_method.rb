# document this class
class Probe
  # this is the same for this class and all subclasses
  @@class_variable = 5

  # self defines a method for a class, not objects
  def self.deploy
    puts 'Deploy time is: ' + @@class_variable.to_s
  end
end

# document this class
class Probe1 < Probe
  @@class_variable = 1
end

# will output 2 (Probe 2 puts new value in its declaration)
puts Probe.deploy # Deploy time is: 1
