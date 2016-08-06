class Pangram
  def self.pangram?(s)
    s.gsub(/[\W\d\_]/, "").downcase.chars.uniq.size == 26
  end
end
