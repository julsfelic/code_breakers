require 'pry'

# iteration 1
initials = ARGV.map do |name|
  name[0].upcase
end.join

# iteration 2
def cyphertext(char)
  alphabet = ('a'..'z').to_a
  orig_index = alphabet.find_index(char)
  alphabet[orig_index + 2]
end

cipher = ARGV.map do |message|
  message.chars.map do |char|
    cyphertext(char)
  end.join
end.join(' ')

puts cipher
