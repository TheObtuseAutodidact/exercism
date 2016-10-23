require 'date'
require 'time'

class Gigasecond
  GIGASECOND = 1e9
  def self.from(time)
    time = time.to_time if time.is_a?(Date) or time.is_a?(DateTime)
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = 4
end
