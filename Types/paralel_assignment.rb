a, b, c, d, e = 1, 2, 3, 4, 5
puts a # 1
puts b # 2
puts c # 3
puts d # 4
puts e # 5
puts

# side effect -> in this case the list of values is converted to an array
a = 1, 2, 3, 4, 5
puts a.to_s # [1, 2, 3, 4, 5]
puts

# array of values
def get_values
  [1, 2, 3, 4, 5]
end

a, b = get_values
puts a # 1
puts b # 2
puts

a, _, _, _, e = get_values
puts a # 1
puts e # 5
puts

# splat operator * accumulates all values
a, *b = get_values
puts a # 1
puts b.to_s # [2, 3, 4, 5]
puts

a, *b, d, e = get_values

puts a # 1
puts b.to_s # [2, 3]
puts d # 4
puts e # 5
puts
# * can be in the side of the values, to slpit an array into values

a, b, c = *[1, 2, 3]
puts a # 1
puts b # 2
puts c # 3
puts

a, _, c = 1, 2, *[3, 4, 5]
puts a # 1
puts c # 3
puts

a, *, c = 1, 2, *[3, 4, 5]
puts a # 1
puts c # 5
puts

a, _, c, * = 1, 2, [3, 4], *[3, 4, 5]
puts a # 1
puts c.to_s # [3, 4]
puts

# The * can be used with any object. Actually it executes the method to_a
class A
  def initialize(name)
    @name = name
    @type = "type"
  end

  def to_a
    instance_variables
  end
end

p [*A.new("A")] #[:@name, :@type]

