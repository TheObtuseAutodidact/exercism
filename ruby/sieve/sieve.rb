class Sieve

  def initialize(number)
    @number = number
  end

  def number
    @number
  end

  def primes
    return [] unless number > 1 and number.is_a?(Fixnum)
    return [2] if number == 2
    primes_and_composites = Hash[(2..number).to_a.map { |k| [k, 0] }]
    primes_and_composites.keys.each do |key|
      primes_and_composites.each do |k, v|
        primes_and_composites[key] += 1 if key % k == 0
      end
    end
    primes_and_composites.select { |k, v| v == 1 }.keys
  end

end

module BookKeeping
  VERSION = 1
end
