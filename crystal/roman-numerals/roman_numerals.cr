struct Int
  def to_roman
    i = self
    roman = ""

    while i > 0
      if i >= 1000
        i -= 1000
        roman += "M"
      elsif i >= 900
          i -= 900
          roman += "CM"
      elsif i >= 500
        i -= 500
        roman += "D"
      elsif i >= 400
        i -= 400
        roman += "CD"
      elsif i >= 100
        i -= 100
        roman += "C"
      elsif i >= 90
        i -= 90
        roman += "XC"
      elsif i >= 50
        i -= 50
        roman += "L"
      elsif i >= 40
        i -= 40
        roman += "XL"
      elsif i >= 10
        i -= 10
        roman += "X"
      elsif i >= 9
        i -= 9
        roman += "IX"
      elsif i >= 5
        i -= 5
        roman += "V"
      elsif i >= 4
        i -= 4
        roman += "IV"
      else
        i -= 1
        roman += "I"
      end
    end

    return roman
  end
end
