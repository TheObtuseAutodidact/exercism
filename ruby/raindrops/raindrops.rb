class Raindrops
  def self.convert(drops)
    solution = ""
    solution += "Pling" if drops % 3 == 0
    solution += "Plang" if drops % 5 == 0
    solution += "Plong" if drops % 7 == 0

    solution = "#{drops}" if solution == ""
    solution
  end
end

module BookKeeping
  VERSION = 3
end
