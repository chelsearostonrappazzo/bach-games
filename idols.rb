require "csv"

# groups = []

# CSV.foreach("idols-headers.csv") do |row|
#   groups << row.to_h
# end

# CSV.foreach("idols.csv") do |row|
#   puts row["Stray Kids"]
# end

# idols = CSV.read("idols-headers.csv", headers: true)

# idols.each do |idol_row|
#   p idol_row #<CSV: : Row "Name"
# end

CSV.foreach("idols-headers.csv", headers: true) do |row|
  p row["Stray Kids"]
end

# class Group
#   attr_accessor :group, :idol

#   def initialize(input_options)
#     @group = :group_input
#     @idol = :idol
#   end

#   def group_members

#   end
# end

puts "What groups do you want to use?"
input = gets.chomp.downcase
