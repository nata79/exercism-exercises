class Brackets
  def self.are_valid?(s : String)
    stack = [] of Char

    s.chars.each do |char|
      if opening_bracket?(char)
        stack.push(char)
      elsif closing_bracket?(char)
        return false if stack.empty?

        opening_bracket = stack.pop

        return false unless matches?(opening_bracket, char)
      end
    end

    return stack.empty?
  end

  def self.opening_bracket?(char)
    ['(', '[', '{'].includes?(char)
  end

  def self.closing_bracket?(char)
    [')', ']', '}'].includes?(char)
  end

  def self.matches?(opening_bracket, closing_bracket)
    matching_brackets = {
      '(' => ')',
      '[' => ']',
      '{' => '}'
    }

    closing_bracket == matching_brackets[opening_bracket]
  end
end
