# LS Course - Exercises
# RB130 Ruby Foundations
# Chapter - Easy 1, Question 5, Encrypted Pioneers

# QUESTION
# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13. Write a program that deciphers and prints each of these names .

$stdout.sync = true # To display output immediately on windows using git bash

def decrypt(name, rot = 13)
  lower = ('a'..'z').to_a
  capital = ('A'..'Z').to_a

  name.gsub!(/[a-z]/) { |char| lower[(lower.index(char) + rot) % 26] }
  name.gsub!(/[A-Z]/) { |char| capital[(capital.index(char) + rot) % 26] }
end

def decrypt(message)
  input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  output = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
  
  message.gsub(/[a-z]/i) { |char| output[input.index(char)] }
end

def decrypt(message)
  input = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  output = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'
  
  message.chars.map do |char|
    input.include?(char) ? output[input.index(char)] : char
  end.join
end

def decrypt(message)
  offset = 13
  
  message.chars.map do |char|
    if (65..90).include?(char.ord)
      ((char.ord - 65 + offset) % 26 + 65).chr
    elsif (97..122).include?(char.ord)
      ((char.ord - 97 + offset) % 26 + 97).chr
    else
      char
    end
  end.join
end

p decrypt('Nqn Ybirynpr')
p decrypt('Tenpr Ubccre')
p decrypt('Nqryr Tbyqfgvar')
p decrypt('Nyna Ghevat')
p decrypt('Puneyrf Onoontr')
p decrypt('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
p decrypt('Wbua Ngnanfbss')
p decrypt('Ybvf Unvog')
p decrypt('Pynhqr Funaaba')
p decrypt('Fgrir Wbof')
p decrypt('Ovyy Tngrf')
p decrypt('Gvz Orearef-Yrr')
p decrypt('Fgrir Jbmavnx')
p decrypt('Xbaenq Mhfr')
p decrypt('Fve Nagbal Ubner')
p decrypt('Zneiva Zvafxl')
p decrypt('Lhxvuveb Zngfhzbgb')
p decrypt('Unllvz Fybavzfxv')
p decrypt('Tregehqr Oynapu')

def decrypt(message)
  lower = ('a'..'z').to_a
  capital = ('A'..'Z').to_a
  offset = 13
  
  message.gsub!(/[a-z]/) { |char| lower[(lower.index(char) + offset) % 26] }
  message.gsub!(/[A-Z]/) { |char| capital[(capital.index(char) + offset) % 26] }
end
