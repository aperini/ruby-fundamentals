lang = 'fr'

message = if lang == 'fr' then 'French' else 'English' end
puts message

message = 'English' if lang == 'eng'
puts message

new_lang = lang

# elsif
if !new_lang
  puts 'was nil'
elsif new_lang == 'English'
  puts 'was English!'
else
  puts 'was ' + new_lang
end

# unless (same as 'if false')
unless new_lang
  puts 'language undefined'
end

# ternary ?
puts lang == 'eng' ?
         'English' :
         'French'
