class Year
  def self.leap?(year)
    (
      self.divisible_by_4?(year) &&
      !self.divisible_by_100?(year)
    ) || (
      self.divisible_by_4?(year) &&
      self.divisible_by_100?(year) &&
      self.divisible_by_400?(year)
    )
  end

  def self.divisible_by_4?(year)
    year % 4 == 0
  end

  def self.divisible_by_100?(year)
    year % 100 == 0
  end

  def self.divisible_by_400?(year)
    year % 400 == 0
  end
end
