# frozen_string_literal: true

file = "male_celebs.txt"
# 20 total names
@all_names = []
celeb_names = []
filler_names = []
entered_names = []
@tops = []
@bottoms = []
@ind = 0
@var = 1

# this will pair the names up with no repeats
def pairings(nam)
  puts "Your contestants are:"
  while @var < nam.length
    puts "#{@var}. #{nam[@ind]}"
    @var += 1
    @ind += 1
  end
  puts "--------"
  pairings = nam.combination(2).to_a
  @game = pairings.shuffle
end

# this will pull celeb names from file and put into an array
File.readlines(file).each do |line|
  celeb_names << line.strip
end

# this will populate a new array of names based on user input.
puts "Please enter in names to add to the list. Type 'done' when you are finished!"
input = nil
while input == gets.chomp.capitalize
  entered_names << input
  break if input.downcase == "done"
end

# this will check if there are less than 20 names, if so, it will fill with names from a list of celebrities.
len = entered_names.length
if len < 20
  filler_names << celeb_names.sample(20 - len)
  @all_names = entered_names.concat(filler_names).flatten
  pairings(@all_names)
elsif len > 20
  entered_names.delete_if { |num| entered_names.index(num) > 19 }
  pairings(entered_names)
end

def check_ranking
  @tops_rankings = Hash.new(0)
  @bottoms_rankings = Hash.new(0)
  @tops.each { |name| @tops_rankings[name] += 1 }
  @bottoms.each { |name| @bottoms_rankings[name] += 1 }
  return unless input == "check"

  p @tops_rankings
  p @bottoms_rankings
end

def start_game
  puts "Let's start! Type in anything to begin!"
  @ind = 0
  while (input = gets.chomp.downcase)
    puts "1. #{@game[@ind][0]}" "\n" "2. #{@game[@ind][1]}"
    puts "*~*~*~*~* \n Who is the top?"
    input = gets.chomp.to_i
    topbot(input)
    @ind += 1
    check_ranking
  end
end

def topbot(input)
  return unless input.positive? && input < 3

  top_index = (input - 1).zero? ? 0 : 1
  bottom_index = (input - 1).zero? ? 1 : 0
  @tops << @game[@ind][top_index]
  @bottoms << @game[@ind][bottom_index]
end

start_game
