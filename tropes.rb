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
case input
when "1"
  puts "What groups would you like to include?"
when "2"
  puts "Which books would you like to include?"
when @idols.keys.each { |key| key }
  puts "Okay!"
else
  puts "Then why are you here? Please try again!"
end
# if input == 1
#   puts "What groups would you like to include?"
#   input.to_s != @idols.keys
#   puts "Please choose a different group!"
# else
#   puts "What books should I add?"
#   input.to_s != @books.keys
# end
# puts "Let's begin!"

# while (input = gets.chomp.downcase) != "done"
#   i = 0
#   puts tropes.shuffle[i]
#   puts "*~*~*~*~*"
#   puts "If you are finished, type 'Done'. Otherwise type whatever and hit enter."
# end
