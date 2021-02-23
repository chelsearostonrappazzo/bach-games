require "CSV"

class Group
  attr_accessor :group_name, :members

  def initialize(input_options)
    @group_name = input_options[:group_name]
  end

  def add_idols
    # @idols = Hash.new(0)
    new_array = []
    CSV.foreach("idols-headers.csv", headers: true) do |row|
      new_array << row[@group_name]
    end
    @members = new_array.compact
    # @idols[@group_name] = new_array.compact
  end

  def group_members
    p @members
  end
end

# new_one.add_idols("Everglow")
# new_two.add_idols("Stray Kids")
# new_three.add_idols("Way V")

# new.add_idols("TWICE")
# new.add_idols("BTS")
# new.add_idols("Dreamcatcher")
# new.add_idols("2PM")
# new.add_idols("SHINee")
# new.add_idols("SuperM")
# new.add_idols("Blackpink")
# new.add_idols("Itzy")

# p new.which_groups
