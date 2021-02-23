require "csv"

@books = Hash.new(0)
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

def add_books(n)
  new_array = []
  CSV.foreach("book_characters.csv", headers: true) do |row|
    new_array << row[n]
  end
  @books[n] = new_array.compact
end

add_books("Twilight")
add_books("LOTR")
add_books("Mansfield Park")
add_books("Harry Potter")
add_books("Pride & Prejudice")
add_books("Emma")
add_books("Northanger Abbey")
add_books("Persuasion")
add_books("Sense & Sensibility")

# p @books.keys

# game_contestants << @idols.values_at(var)

# puts game_contestants
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
