class Hamming
  def self.compute(strandA : String, strandB : String) : Number
    raise ArgumentError.new unless strandA.size == strandB.size

    differences = 0

    (0..(strandA.size - 1)).each do |i|
      differences += 1 unless strandA[i] == strandB[i]
    end

    return differences
  end
end
