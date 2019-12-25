require "digest"
algorithms = %w{MD5 SHA1}

puts "what do you want to encipher?"

text_to_encryption = gets.chomp

puts "Which way do you want to encipher?"

algorithms.each.with_index(1) {|algorithm, index| puts "#{index}. #{algorithm}"}

chosen_algorithm = gets.to_i - 1

if chosen_algorithm == 0
  puts Digest::MD5.hexdigest text_to_encryption
elsif chosen_algorithm == 1
  puts Digest::SHA1.hexdigest text_to_encryption
else
  puts "Sorry, we don't have such an algorithm"
end
