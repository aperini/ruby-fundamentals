# map

map = [1,2,3].map { |v| v*10}
puts map.to_s # [10, 20, 30]

# reduce (accumulates de result in sum. 0 is initial value of sum)
reduce = map.reduce(0) { |sum, v| sum + v}
puts reduce # 60

# filters
puts [1, 2, 3, 4, 5].select {|v| v.even?}.to_s # [2, 4]

# consecutives
puts
puts [1, 2, 3, 4, 5].each_cons(2) {|v| puts v.to_s} # [1, 2] [2, 3] [3, 4] [4, 5]