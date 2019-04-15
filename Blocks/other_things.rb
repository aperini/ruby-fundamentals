# getting blocks arity

p proc { |param1, param2| }.arity # 2
p proc { |param1, *params, param_n| }.arity # -3 ---> -(2 + 1)

p my_lambda = -> { return 1 }.arity # 0
p my_lambda = ->(x) {}.arity # 1
p my_lambda = ->(x, *params) {}.arity # -2 ---> -(1 + 1)

# case when

weekend = proc { |time| time.saturday? || time.sunday? }
weekday = proc { |time| time.wday < 6 }

case Time.now
when weekend then puts 'It\'s weekend'
when weekday then puts 'Not weekend yet'
else puts 'Well I don\'t know what day is today'
end
