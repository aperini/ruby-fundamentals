# map
map = [1, 2, 3].map { |v| v * 10 }
puts map.to_s # [10, 20, 30]

# reduce (accumulates de result in sum. 0 is initial value of sum)
reduce = map.reduce(0) { |sum, v| sum + v }
puts reduce # 60

# filters
puts [1, 2, 3, 4, 5].select { |v| v.even? }.to_s # [2, 4]

# consecutive
puts
# [1, 2, 3] [2, 3, 4] [3, 4, 5]
puts [1, 2, 3, 4, 5].each_cons(3) { |v| puts v.to_s }
