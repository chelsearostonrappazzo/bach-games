file_2 = "tropes.txt"
#include name files for idols, book characters, tv characters
#convert idols sheet to csv

tropes = []

File.readlines(file_2).each do |line|
  tropes << line.strip
end

puts "Let's begin!"

while (input = gets.chomp.downcase) != "done"
  i = 0
  puts tropes.shuffle[i]
  puts "*~*~*~*~*"
  puts "If you are finished, type 'Done'. Otherwise type whatever and hit enter."
end
