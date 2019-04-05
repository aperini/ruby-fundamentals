class Work

  attr_accessor :default_start
  attr_accessor :default_end
  attr_accessor :type

  def initialize
    self.default_start = 9
    self.default_end = 17
  end

  def start(init = default_start, fin = default_end, type = :temps_plein)
    puts "init " + init.to_s
    puts "fin " + fin.to_s
    puts "type " + type.to_s

    puts "is 35h" if (type == :temps_plein)
  end

  def workWeek(isFull, *freeDays)
    isFull ?
        (puts "week is full") :

    unless isFull
      (puts "free days " + freeDays.to_s)
    else (puts "week is full") end
  end
end

# show all attributes
p Work.new

puts
puts Work.new.start(9)
puts
puts Work.new.start(8.5, 16.5)
puts
puts Work.new.start(9, 13, :temps_partiel)

puts Work.new.workWeek(true)
puts Work.new.workWeek(false, :friday)

# we can split an array as *
freeDays = [:thursday, :friday]
puts Work.new.workWeek(false, *freeDays)
# same as
puts Work.new.workWeek(false, :thursday, :friday)