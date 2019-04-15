# #####################
# private object methods
# #####################
# document this class
class ClassA
  @@class_variable = 5

  # public
  def deploy1
    puts deploy2
  end

  # private
  # putting private here will turn private all object methods below

  def deploy2
    'Deploy time is: ' + @@class_variable.to_s
  end

  # or declare private methods like this
  private :deploy2
end

ClassA.new.deploy1

#######################
# private class method
#######################
# document this class
class ClassB
  @@class_variable = 5

  # public class method
  def self.deploy1
    puts deploy2
  end

  def self.deploy2
    'Deploy time is: ' + @@class_variable.to_s
  end

  # private class methods are only declared like this
  private_class_method :deploy2
end

ClassB.deploy1

# #####################
# inheritance
# #####################
# document this class
class ClassC < ClassB
  def initialize
    puts self.class.deploy1
  end
end

ClassC.new
