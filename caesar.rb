# iteration 2

key = ARGV[0].to_i
message = ARGV[1..-1]

cipher = message.map do |message|
  message.chars.map do |char|
    cyphertext(char, key)
  end.join
end.join(' ')

def cyphertext(char, key)
  alphabet = ('a'..'z').to_a
  coded = alphabet.rotate(key)
  orig_index = alphabet.find_index(char)
  rotate_method(orig_index, key, alphabet)
end

def rotate_method(orig_index, key, alphabet)
  final_rotate = orig_index + key
  if final_rotate > 26
    final_rotate = final_rotate - 27
  end
  alphabet[final_rotate]
end

puts cipher
