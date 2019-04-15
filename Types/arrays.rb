# initializes with size 3 and with the SAME object
arr = Array.new(3, 'abc')
puts arr.to_s

puts
arr.first.upcase!
puts arr.to_s # [ABC, ABC, ABC]

# initializes with size 3 and with DIFFERENT objects
puts
arr = Array.new(3) { 'abc' }
arr.first.upcase!
puts arr.to_s # [ABC, abc, abc]

# [[abc, abc, abc], [abc, abc, abc], [abc, abc, abc]]
arr = Array.new(3) { Array.new(3) { 'abc' } }

# accessing positions
arr = [1, 2, 3, 4, 5, 6, 7, 8]
puts arr[0..2].to_s # [1, 2, 3]

puts arr[2..3].to_s # [3, 4]

# -1 is the last position
puts arr[3..-1].to_s # [4, 5, 6, 7, 8]
puts arr[3..-2].to_s # [4, 5, 6, 7]
puts arr[3..-3].to_s # [4, 5, 6]
puts arr[-8..8].to_s # [1, 2, 3, 4, 5, 6, 7, 8]

arr[0] = 'val'
puts arr.to_s # [val, 2, 3, 4, 5, 6, 7, 8]
arr[-8] = 'value'
puts arr.to_s # [value, 2, 3, 4, 5, 6, 7, 8]

arr[0..1] = ['0', :left]
puts arr.to_s # ['0', :left, 3, 4, 5, 6, 7, 8]

arr << 9
puts arr.to_s # ['0', :left, 3, 4, 5, 6, 7, 8, 9]

# operations
puts ([1, 2, 3] + [4, 5, 6]).to_s # [1, 2, 3, 4, 5, 6]
puts ([1, 2] * 3).to_s # [1, 2, 1, 2, 1, 2]
puts ([3, 4, 1, 2, 3, 4, 5] - [1, 2, 5]).to_s # [3, 4, 3, 4]
puts [3, 4, 1, 2, 3, 4, 5].sort.to_s # [1, 2, 3, 3, 4, 4, 5]
