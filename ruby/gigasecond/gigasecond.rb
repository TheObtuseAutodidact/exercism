# Return the moment one gigasecond after the moment given as parameter
class Gigasecond
  GIGASECOND = 1_000_000_000
  def self.from(moment)
    moment + GIGASECOND
  end
end

module BookKeeping
  VERSION = 4
end
