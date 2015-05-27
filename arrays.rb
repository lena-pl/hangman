require 'open-uri'

word = open("http://seriousorange.com/words.txt").read.split.sample

letters = word.chars
 cryptic_word = letters.map do |letter| 
	"_"
end



loop do
	puts "Here's your word"
	puts cryptic_word.join

	puts "Guess a letter"
	guess = gets.strip.to_s
	if letters.include?(guess)
		letters.each_with_index do |letter, index|
			if letter == guess
				cryptic_word[index] = guess
			end
		end
	else 
		puts "Try again!"
	end
	if cryptic_word.include?("_") == false
		puts "You win!"
		break
	end
end