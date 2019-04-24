# document class
class Presenter
  attr_accessor :object

  def initialize(object)
    self.object = object
  end

  # If a method we call is missing, delegate it to the object
  def method_missing(m, *args, &block)
    puts "Delegating '#{m}'"
    object.send(m, *args, &block)
  end
end

# document class
class UserPresenter < Presenter
  # We just want to display the first letter of the last name
  def last_name
    "#{object.last_name[0]}."
  end

  def full_name
    # 'first_name' is missing (will be delegated)
    "#{first_name} #{last_name}"
  end
end

User = Struct.new(:first_name, :last_name, :age) # A mini User object to work with
user = User.new('Augusto', 'Perini', 38)

user_presenter = UserPresenter.new(user)

puts user_presenter.full_name
# Delegating 'first_name'
# Augusto P.

puts user_presenter.age
# Delegating 'age'
# 38
