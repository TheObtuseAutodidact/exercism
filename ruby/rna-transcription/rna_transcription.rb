

class Complement

  def self.of_dna(string)
    string.chars.collect do |nucleotide|
      case nucleotide
        when "G"
          "C"
        when "C"
          "G"
        when "T"
          "A"
        when "A"
          "U"
        else
          return ""
        end
      end.join("")
  end

end

module BookKeeping
  VERSION = 4
end
