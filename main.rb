require_relative "idols.rb"
require_relative "idol_data.rb"
# require_relative "tropes.rb"
# require_relative "game.rb"
require "FileUtils"
require_relative "tropes.txt"
require_relative "male_celebs.txt"

if FileUtils.compare_file("tropes.txt", "male_celebs.txt")
  true
else
  false
end

# new_one = Group.new(group_name: "Everglow")
# new_two = Group.new(group_name: "Stray Kids")
# new_three = Group.new(group_name: "Way V")

# new_one.add_idols
# new_two.add_idols
# new_three.add_idols

# game = Idol_Database.new(groups: [new_one, new_two, new_three])

# p game.groups
