# For integers there's Fixnum and Bignum

puts "For integers there's Fixnum and Bignum"
puts
# literals representation

#hexa
puts "0x (hexadecimal literal)-> 0xAF to string: " + 0xAF.to_s

#octal
puts "0 (octal literal)-> 010 to string: " + 010.to_s
puts "0o (octal literal)-> 0o10 to string: " + 0o10.to_s

#decimal
puts "0d (decimal literal)-> 0d10 to string: " + 0d10.to_s
puts "no prefix (decimal literal)-> 10 to string: " + 10.to_s

#binary
puts "0b (binary literal)-> 0b1010 to string: " + 0b1010.to_s


puts ""
puts "ruby ignores underscore:"

puts "(decimal) 100_999 to string: " + 100_999.to_s
puts "(binary)-> 0b0001_0000_0000 to string: " + 0b0001_000_0000.to_s

puts "For integers there's Fixnum and Bignum"
puts

puts "1.343 -> " + 1.343.to_s
puts "10.05e3 (= 10.05 x 1000) = " + 10.05e3.to_s
puts "10 + 0.5 = " + (10 + 0.5).to_s