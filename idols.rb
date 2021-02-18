require "csv"

@groups = Hash.new(0)

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

def add_idols(n)
  new_array = []
  CSV.foreach("idols-headers.csv", headers: true) do |row|
    new_array << row[n]
  end
  @groups[n] = new_array
end

add_idols("Everglow")
add_idols("Stray Kids")
add_idols("Way V")
add_idols("TWICE")

p @groups

# class Group
#   attr_accessor :group, :idol

#   def initialize(input_options)
#     @group = :group_input
#     @idol = :idol
#   end

#   def group_members

#   end
# end

# puts "What groups do you want to use?"
# input = gets.chomp.downcase
