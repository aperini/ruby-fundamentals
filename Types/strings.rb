# string interpolation (replacement of placeholders)

a = 10
b = 20

puts "a = #{a}"
puts "b = #{b}"
puts "a + b = #{a + b}"

world_type = 'Mars'
puts "Hello #{world_type}"

puts "\nThe essential difference between the two literal forms of strings (single or double quotes) is that double quotes allow for escape sequences while single quotes do not"


# escaping
puts "\nescaping"
puts "\"a\""

percentQ = '%q'
puts "\nEscaping with #{percentQ} and a setence delimiter:"
puts "the use of %q with () delimiters"
puts %q('inside single cote', no single quote)
puts %q(with %q we don't need to escape the quotes)

# new line
puts "hello

   world"

message = <<EOS
  \nThere's no place
     I'd rather be
EOS

puts message