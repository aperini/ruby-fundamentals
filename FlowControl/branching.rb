lang = "fr"

message = if lang == "fr" then "French" else "English" end
puts message

message = "English" if lang == "eng"
puts message

newLang = lang

# elsif
if !newLang
  puts "was nil"
elsif newLang == "English"
  puts "was English!"
else
  puts "was " + newLang
end

# unless (same as "if false")
unless newLang
  puts "language undefined"
end

# ternary ?
puts lang == "eng" ?
         "English" :
         "French"

