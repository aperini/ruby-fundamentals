# /regex/

numRegex = "/\d+/"
numRegex = %r(\d+)

# =~ evaluates the regex and returns the position where it matches
puts result = numRegex =~ "abc8ef" # 3 ()

# checks the absense (returns true or false)
puts result = numRegex !~ "abcef" # true (does not contain)

matchResult = numRegex.match("abc88efgh")
p matchResult # #<MatchData "88">
puts matchResult # 88
puts matchResult[0] # 88 also visible in $&
puts $&
puts matchResult.pre_match # abc also visible in $`
puts $`
puts matchResult.post_match # efgh also visible in $'
puts $'


# use scan to recover all matches

numsRegex = "/\d/"
puts "1a2b3c4d".scan(numRegex)

# combine gsub with regex
wordsRegex = /([a-zA-Z]+) ([a-zA-Z]+)/
puts "Mr " + "Augusto Perini".gsub(wordsRegex, '\2, \1') # Mr Perini, Augusto




