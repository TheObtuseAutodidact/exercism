class PrimeFactors
  def self.for(num)
    prime_factors = []
    return prime_factors if num < 2

    while num > 1
      n = (2..num).find { |divisor| (num % divisor).zero? }
      prime_factors << n
      num /= n
    end
    prime_factors
  end
end
