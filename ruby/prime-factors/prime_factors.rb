class PrimeFactors
  def self.for(num)
    prime_factors = []
    return prime_factors if num < 2

    counter = 2
    while counter <= num
      if (num % counter).zero?
        prime_factors << counter
        num /= counter
        counter = 2
      else
        counter += 1
      end
    end
    prime_factors
  end
end
