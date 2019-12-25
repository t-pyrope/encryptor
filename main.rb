require "digest"
algorithms = %w{MD5 SHA1 SHA2}

puts "what do you want to encipher?"

text_to_encryption = gets.chomp

puts "Which way do you want to encipher?"

algorithms.each.with_index(1) {|algorithm, index| puts "#{index}. #{algorithm}"}

chosen_algorithm = gets.to_i - 1

case chosen_algorithm
when 0
  puts Digest::MD5.hexdigest text_to_encryption
when 1
  puts Digest::SHA1.hexdigest text_to_encryption
when 2
  puts Digest::SHA2.hexdigest text_to_encryption
else
  "Sorry, we don't have such an algorithm"
end
