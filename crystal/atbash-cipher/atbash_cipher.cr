class Atbash
  def self.encode(str : String) : String
    str.downcase.gsub(/\W/, "").chars
      .map { |c| convert(c) }
      .each_slice(5).map { |slice| slice.join("") }.join(" ")
  end

  def self.convert(c : Char)
    if c >= 'a' && c <= 'z'
      return ('a'.ord + ('z' - c)).chr
    else
      return c
    end
  end
end
