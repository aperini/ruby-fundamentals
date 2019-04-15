# /regex/

num_regex = '/\d+/'
num_regex = %r(\d+)

# =~ evaluates the regex and returns the position where it matches
puts result = num_regex =~ 'abc8ef' # 3 ()

# checks the absence (returns true or false)
puts result = num_regex !~ 'abcef' # true (does not contain)

match_result = num_regex.match('abc88efgh')
p match_result # #<MatchData '88'>
puts match_result # 88
puts match_result[0] # 88 also visible in $&
puts $&
puts match_result.pre_match # abc also visible in $`
puts $`
puts match_result.post_match # efgh also visible in $'
puts $'

# use scan to recover all matches
puts 'scan'
nums_regex = %r(\d)
puts '1a2b3c4d'.scan(nums_regex)

# combine gsub with regex
words_regex = /([a-zA-Z]+) ([a-zA-Z]+)/
puts 'Mr ' + 'Augusto Perini'.gsub(words_regex, '\2, \1') # Mr Perini, Augusto
