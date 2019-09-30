$stdout.sync = true # To display output immediately on windows using git bash

class PigLatin
  def self.translate(string)
    string.split.map { |word| transform(word) }.join(' ')
  end
  
  def self.transform(word)
    word.gsub!(/^([aeiou])(\w*)/, '\1\2ay') ||
    word.gsub!(/^(yt|xr)(\w*)/, '\1\2ay') ||
    word.gsub!(/^([^aeiou]*qu)([aeiou]\w*)/, '\2\1ay') ||
    word.gsub!(/^(\w*?)([aeiou]\w*)/, '\2\1ay') ||
    word
  end
end

# # ALTERNATE SOLUTIONS

#1
class PigLatin
  def self.translate(string)
    string.split(" ").each do |word|
      if word.scan(/^[aeiou]|^(y|x)[^aeiou]+/).empty?
        word << word.slice!(/^[^aeiouq]*(qu)*/)
      end
      word << "ay"
    end
    .join(" ")
  end
end

#2
class PigLatin
  CONSN = /(\A[^aeiou]*qu|\A[^aieou]+)/i
  EXCEP = /\A(yt)|\A(xr)/i

  def self.translate(phrase)
    phrase.split.map do |word|
      word << if word.match(CONSN) && !word.match(EXCEP)
                word.slice!(CONSN) + 'ay'
              else
                'ay'
              end
    end.join ' '
  end
end

class PigLatin
  CONSONANT_SOUND_WORDS =
    /\b(?![xy][^aeiou])(b|ch|c|d|f|g|h|j|k|l|m|n|p|qu|q|r|sch|squ|sh|s|thr|th|v|w|x|y|z)(\w+)/i

  def self.translate(str)
    str.gsub(CONSONANT_SOUND_WORDS, '\2\1').gsub(/(\w+)/, '\1ay')
  end
end