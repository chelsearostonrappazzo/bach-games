# frozen_string_literal: true
require "tty-prompt"
@prompt = TTY::Prompt.new

# file = "male_celebs.txt"
# file_two = "sara.txt"
# 20 total names
@all_names = []
@celeb_names = []
@filler_names = []
@mundane_names = []
@tops = []
@bottoms = []
@ind, @var = 0, 1

# File.readlines(file).each do |line|
#   @celeb_names << line.strip
# end

# File.readlines(file_two).each do |line|
#   @mundane_names << line.strip
# end

# def pairings(nam)
#   puts "Your contestants are:"
#   while @var < nam.length
#     puts "#{@var}. #{nam[@ind]}"
#     @var += 1
#     @ind += 1
#   end
#   puts "--------"
#   pairings = nam.combination(2).to_a
#   @game = pairings.shuffle
# end

# def get_contestants
#   if @mundane_names.length < 20
#     @filler_names << @celeb_names.sample(20 - len)
#     @all_names = @mundane_names.concat(@filler_names).flatten
#     pairings(@all_names)
#   elsif @mundane_names.length > 20
#     @mundane_names.delete_if { |num| @mundane_names.index(num) > 19 }
#     pairings(@mundane_names)
#   end
# end

# def start_game
#   start = @prompt.select("Are you ready to begin?", %w(Yes No))
#   @ind = 0
#   while start == "Yes"
#     puts "1. #{@game[@ind][0]}" "\n" "2. #{@game[@ind][1]}"
#     puts "*~*~*~*~* \n Who is the top?"
#     choice = gets.chomp.to_i
#     topbot(choice)
#     @ind += 1
#   end
# end

# def check_ranking
#   results = File.open("results.txt", "w+")
#   @rankings = Hash.new { |h, k| h[k] = Hash.new(&h.default_proc) }
#   @all_names.each { |name| @rankings[:tops][name] = 0 }
#   @all_names.each { |name| @rankings[:bottoms][name] = 0 }
#   @tops.each { |name| @rankings[name] += 1 }
#   @bottoms.each { |name| @rankings[name] += 1 }
#   results << @rankings.sort_by { |name, num| num }.to_h
# end

# def topbot(choice)
#   return unless choice.positive? && choice < 3

#   top_index = (choice - 1).zero? ? 0 : 1
#   bottom_index = (choice - 1).zero? ? 1 : 0
#   @tops << @game[@ind][top_index]
#   @bottoms << @game[@ind][bottom_index]
# end

def save
  output = File.open("bach_game.txt", "w")
  output << rankings
  output.close
end

start_game
