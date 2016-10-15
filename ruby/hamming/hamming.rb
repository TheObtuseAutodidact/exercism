class Hamming
  VERSION = 1
  def self.compute(strand_1, strand_2)
    if strand_1.length != strand_2.length
      raise ArgumentError
    else
      sol = 0
      strand_1.split("").each_with_index do | n, i |
        sol += 1 if n != strand_2.split("")[i]
      end
      sol
    end
  end
end
