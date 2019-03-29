#######################
# private object methods
#######################
class A

  @@class_variable = 5

  # public
  def deploy1
    puts deploy2
  end

  #private
  # putting private here will turn private all object methods below

  def deploy2
    "Deploy time is: " + @@class_variable.to_s
  end

  # or declare private methods like this
  private :deploy2
end

A.new.deploy1

#######################
# private class method
#######################
class B

  @@class_variable = 5

  # public class method
  def self.deploy1
    puts deploy2
  end

  def self.deploy2
    "Deploy time is: " + @@class_variable.to_s
  end

  # private class methods are only declared like this
  private_class_method :deploy2
end

B.deploy1

#######################
# inheritance
#######################

class C < B
  def initialize
    puts self.class.deploy1
  end
end

C.new