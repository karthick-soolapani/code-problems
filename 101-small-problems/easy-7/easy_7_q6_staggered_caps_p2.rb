# LS Course - Exercises
# 101 -109 - Small Problems
# Chapter - Easy 7 Question 6, Staggered Caps (Part 2)

# QUESTION
# Modify the method from the previous exercise so it ignores non-alphabetic characters when determining whether it should uppercase or lowercase each letter. The non-alphabetic characters should still be included in the return value; they just don't count when toggling the desired case.

$stdout.sync = true # To display output immediately on windows using git bash

def staggered_case(string, do_upcase = true, count_all = false)
  string.chars.each do |char|
    do_upcase ? char.upcase! : char.downcase!
    do_upcase = !do_upcase if count_all || /[a-z]/i.match(char)
  end.join
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
