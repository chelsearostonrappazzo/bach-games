require "csv"

@idols = Hash.new(0)
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

def add_idols(n)
  new_array = []
  CSV.foreach("idols-headers.csv", headers: true) do |row|
    new_array << row[n]
  end
  @idols[n] = new_array.compact
end

add_idols("Everglow")
add_idols("Stray Kids")
add_idols("Way V")
add_idols("TWICE")
add_idols("BTS")
add_idols("Dreamcatcher")
add_idols("2PM")
add_idols("SHINee")
add_idols("SuperM")
add_idols("Blackpink")
add_idols("Itzy")

p @idols.keys

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

p @books.keys

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
