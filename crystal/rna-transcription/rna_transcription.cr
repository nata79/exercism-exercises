class RnaComplement
  TRANSCRIPTION_TABLE = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }
  def self.of_dna(dna : String)
    dna.chars.map { |nucleotide| TRANSCRIPTION_TABLE[nucleotide] }.join("")
  end
end
