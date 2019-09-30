$stdout.sync = true # To display output immediately on windows using git bash

# PROBLEM UNDERSTANDING
# INPUT - String (1 codon or multiple, a strand)
#   raise custom error for invalid strand
# OUTPUT - String(1 codon) or Array(multiple codons)
# RULES -
#   Input will be either a 3-letter codon or a strand
#   strand needs to be broken down - split by 3 letters
#   when STOP codon encountered stop iteration and return the current protein arr

class InvalidCodonError < StandardError
  def initialize(msg = 'Invalid codon')
    super
  end
end

class Translation
  PROTEIN = {
    %w[AUG]             => 'Methionine',
    %w[UUU UUC]         => 'Phenylalanine',
    %w[UUA UUG]         => 'Leucine',
    %w[UCU UCC UCA UCG] => 'Serine',
    %w[UAU UAC]         => 'Tyrosine',
    %w[UGU UGC]         => 'Cysteine',
    %w[UGG]             => 'Tryptophan',
    %w[UAA UAG UGA]     => 'STOP'
  }

  def self.of_codon(codon)
    PROTEIN.each { |codons, acid| return acid if codons.include?(codon) }
    raise InvalidCodonError
  end
  
  def self.of_rna(strand)
    raise InvalidCodonError unless strand.size % 3 == 0

    strand.scan(/.{3}/).each_with_object([]) do |codon, proteins|
      protein = of_codon(codon)
      return proteins if protein == 'STOP'
      proteins << protein
    end
  end
end

# ALTERNATE SOLUTIONS

#1
class InvalidCodonError < StandardError
end
#
class Translation
  CODON_PROTEIN = {
    'AUG' => 'Methionine',    'UUU' => 'Phenylalanine',
    'UUC' => 'Phenylalanine', 'UUA' => 'Leucine',
    'UUG' => 'Leucine',       'UCU' => 'Serine',
    'UCC' => 'Serine',        'UCA' => 'Serine',
    'UCG' => 'Serine',        'UAU' => 'Tyrosine',
    'UAC' => 'Tyrosine',      'UGU' => 'Cystine',
    'UGC' => 'Cystine',       'UGG' => 'Tryptophan',
    'UAA' => 'STOP',          'UAG' => 'STOP',
    'UGA' => 'STOP'
  }

  def self.of_codon(codon)
    CODON_PROTEIN.fetch(codon) { fail InvalidCodonError }
  end

  def self.of_rna(strand)
    strand.scan(/.../).take_while { |codon| of_codon(codon) != 'STOP' }
                      .map { |codon| of_codon(codon) }
  end
end

#2
InvalidCodonError = Class.new(TypeError)

class Translation
  CODONS = { %w[AUG]     => 'Methionine', %w[UUU UUC]         => 'Phenylalanine',
             %w[UUA UUG] => 'Leucine',    %w[UCU UCC UCA UCG] => 'Serine',
             %w[UAU UAC] => 'Tyrosine',   %w[UGU UGC]         => 'Cysteine',
             %w[UGG]     => 'Tryptophan', %w[UAA UAG UGA]     => 'STOP' }

  def self.of_codon(codon)
    CODONS.find { |k, _| k.include?(codon) }&.last || (raise InvalidCodonError)
  end

  def self.of_rna(strand)
    strand.scan(/.{1,3}/).map { |c| of_codon(c) }.take_while { |c| c != 'STOP' }
  end
end