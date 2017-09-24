# Return time object one gigasecond after date/time object given as parameter
class Gigasecond
  GIGASECOND = 1e9
  def self.from(time)
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = 4
end
