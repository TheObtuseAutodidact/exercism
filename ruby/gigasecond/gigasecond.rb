require_relative 'version'

class Gigasecond
  def self.from(date)
    gigasec = 10**9
    date + gigasec
  end

end
