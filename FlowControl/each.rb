# with DO END
["A", "B", "C"].each do
  puts "iterating"
end

# with {}
["A", "B", "C"].each {
  #executing blocks
  puts "iterating"
}

# passing an argument |arg| to the block
["A", "B", "C"].each do |item|
  p item
end
