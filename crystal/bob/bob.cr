class Bob
  def self.hey(message : String) : String
    case message.strip
    when ""
      "Fine. Be that way!"
    when /(?=\A[^a-z]+\z)(?=.*[A-Z])/
      "Whoa, chill out!"
    when /\?\z/
      "Sure."
    else
      "Whatever."
    end
  end
end
