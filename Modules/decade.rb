# look for files in the current dir .
$LOAD_PATH << '.'
# will use the contents of week.rb file
require 'week'

puts Week::FIRST_DAY

Week.weeks_in_month
Week.weeks_in_year

# document this class
class Decade
  include Week

  def number_of_months
    puts Week::FIRST_DAY
    number = 10 * 12
    puts number
  end
end

decade = Decade.new
decade.number_of_months
