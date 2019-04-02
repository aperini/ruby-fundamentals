# A Symbol is the most basic Ruby object you can create.
# It's just a name and an internal ID.
# Symbols are useful because a given symbol name refers to the same object throughout a Ruby program.
# Symbols are more efficient than strings.
# Two strings with the same contents are two different objects, but for any given name there is only one Symbol object.

# different objects
puts "a string".object_id
puts "a string".object_id

# same object
puts :a_symbol.object_id
puts :a_symbol.object_id

# a symbol called :yes
knows_ruby = :yes

if knows_ruby == :yes
  puts 'You are a Rubyist'
else
  puts 'Start learning Ruby'
end

puts knows_ruby.class # Symbol

# Ruby's Symbol Table
# puts Symbol.all_symbols