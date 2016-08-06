require "big/big_int"

class Series
  def initialize(digits : String)
    @digits = digits
  end

  def largest_product(size)
    numbers = @digits.chars.select {|char| char.digit? }.map { |char| BigInt.new(char.to_i) }

    if size < 0 || size > @digits.size || numbers.size != @digits.size
      return -1
    end

    largest_product = nil

    numbers.each_cons(size) do |slice|
      slice_product = product(slice)

      if !largest_product || slice_product > largest_product
        largest_product = slice_product
      end
    end

    return largest_product ? largest_product : 1
  end

  def product(numbers)
    numbers.reduce(1) { |acc, number| acc * number }
  end
end
