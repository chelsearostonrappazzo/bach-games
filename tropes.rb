file_two = "tropes.txt"
#include name files for idols, book characters, tv characters
#convert idols sheet to csv

require_relative "contestants.rb"

tropes = []

File.readlines(file_two).each do |line|
  tropes << line.strip
end

game_contestants = []
puts "What category would you like to use?"
puts " 1. Kpop Idols \n 2. Book Characters. \n Enter 1 or 2"
input = gets.chomp
if input == "1"
  puts "What groups would you like to include? Type 'done' when you are finished."
  generate_idols(input)
  #  puts "Please choose a different group!"
else
  puts "What books should I add?"
  input.to_s != @books.keys
end
# puts "Let's begin!"

p game_contestants

# while (input = gets.chomp.downcase) != "done"
#   i = 0
#   puts tropes.shuffle[i]
#   puts "*~*~*~*~*"
#   puts "If you are finished, type 'Done'. Otherwise type whatever and hit enter."
# end

# case input
# when "1"
#   puts "What groups would you like to include?"
# when "2"
#   puts "Which books would you like to include?"
# when @idols.keys.each { |key| key }
#   puts "Okay!"
# else
#   puts "Then why are you here? Please try again!"
# end
