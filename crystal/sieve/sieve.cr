class Primes
  def self.sieve(limit)
    return [] of Int32 if limit < 2

    primes = [] of Int32
    range = (2..limit).to_a

    while !range.empty?
      prime = range.shift
      primes << prime

      range = range.select { |number| !(number % prime == 0) }
    end

    return primes
  end
end
