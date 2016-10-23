class Gigasecond
  GIGASECOND = 1e9
  def self.from(time)
    # x = time.class
    # puts x.class
    raise TypeError, ".from accepts Time objects" unless time.class == Time
    time + GIGASECOND
  end
end

module BookKeeping
  VERSION = File.read('.version').to_i
end
