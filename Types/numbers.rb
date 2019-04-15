puts 'For integers there\'s Fixnum and Bignum'
puts
# literals representation

# hexa
puts "0x (hexadecimal literal)-> 0xAF to string: #{0xAF}"

# octal
puts "0 (octal literal)-> 010 to string: #{010}"
puts "0o (octal literal)-> 0o10 to string: #{0o10}"

# decimal
puts "0d (decimal literal)-> 0d10 to string: #{0d10}"
puts "no prefix (decimal literal)-> 10 to string: #{10}"

# binary
puts "0b (binary literal)-> 0b1010 to string: #{0b1010}"

puts
puts 'ruby ignores underscore:'

puts "(decimal) 100_999 to string: #{100_999}"
puts "(binary)-> 0b0001_0000_0000 to string: #{0b0001_000_0000}"
puts
puts "1.343 -> #{1.343}"
puts "10.05e3 (= 10.05 x 1000) = #{10.05e3}"
puts "10 + 0.5 = #{(10 + 0.5)}"
