# document this class
class Work
  attr_accessor :default_start
  attr_accessor :default_end
  attr_accessor :type

  def initialize
    self.default_start = 9
    self.default_end = 17
  end

  def start(init = default_start, fin = default_end, type = :full_time)
    puts 'init ' + init.to_s
    puts 'fin ' + fin.to_s
    puts 'type ' + type.to_s
    puts 'is 35h' if type == :full_time
  end

  def work_week(is_full, *free_days)
    is_full ?
      (puts 'week is full') :
        (puts "free days #{free_days}")
  end
end

# show all attributes
p Work.new

puts
puts Work.new.start(9)
puts
puts Work.new.start(8.5, 16.5)
puts
puts Work.new.start(9, 13, :partial)

puts Work.new.work_week(true)
puts Work.new.work_week(false, :friday)

# we can split an array as *
free_days = [:thursday, :friday]
puts Work.new.work_week(false, *free_days)
# same as
puts Work.new.work_week(false, :thursday, :friday)
