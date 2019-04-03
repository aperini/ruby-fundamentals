# index
puts "hello"[0] # h
puts "hello"[0..2] # hel
puts "hello"[0..12] # hello
puts "hello"[-1] # o

#substring
puts "hello"["he"] # he
puts "hello"["hey"] # nil

# replace

puts a= "Hello Alex" # Hello Alex

a["Alex"] = "George"
puts a # Hello George

puts "ha " *3

# format % number
puts "%05d" % 123 # 00123
puts "%.4g" % 12.34567 # 12.35 (rounds up)

# methods
puts "hello".chars # array of chars
puts "hello".codepoints # array of codepoint
puts "hello".bytes # array of bytes

hello = "hello"
puts hello.upcase! # HELLO
puts hello.downcase # hello
puts hello # HELLO

puts "   this is a sentence    ".strip!.capitalize!

#gsub changes all occurences
puts "<html><body><h1>My First Heading</h1></body></html>".gsub("<", "[").gsub(">", "]") #[html][body][h1]My First Heading[/h1][/body][/html]

puts "none shall pass".split.to_s # ["none", "shall", "pass"]
puts "none/shall/pass".split("/").to_s # ["none", "shall", "pass"]