class Gigasecond
  G = 1_000_000_000

  def self.from(start : Time)
    start + Time::Span.new(0, 0, G)
  end
end
