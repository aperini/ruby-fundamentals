puts (1..5).class # Range

# two dots .. is INCLUSIVE
# [1, 2, 3, 4, 5]
puts (1..5).to_a.to_s

# three dots ... is EXCLUSIVE
# [1, 2, 3, 4]
puts (1...5).to_a.to_s

puts (1...5).begin # 1
puts (1...5).end # 5 (but does not contain)
puts (1...5).include? 5 # false

puts (1..5).include? (1..5).end # true
puts (1...5).include? (1...5).end # true

("aa".."ad").each {|v| puts v}

puts ("aa".."ad").to_a.to_s # ["aa", "ab", "ac", "ad"]

temperature = -10

# Ranges in CASE-WHEN
message = "the temperature is " +
         case temperature
         when -50...0 then "freezing"
         when 0..10 then "cold"
         when 11..25 then "normal"
         else "hot"
         end

puts message.capitalize! # The temperature is freezing

