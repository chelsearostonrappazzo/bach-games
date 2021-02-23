require_relative "idols.rb"

class Idol_Database
  attr_accessor :groups

  def initialize(input_options)
    @groups = input_options[:groups]
  end

  def generate_idols(input)
    @game_contestants = []
    input = nil
    while input == gets.chomp.capitalize
      groups = input.split(/\s*,\s*/)
      groups.each do |group|
        game_contestants << @groups.values_at(group)
      end
      break if input.downcase == "done"
    end
  end
end
