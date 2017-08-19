# Learn To Program
# Chapter 13: Creating New Classes, Changing Existing Ones
# Orange Tree


# Make an OrangeTree class
# It has a height method that returns its height
# It has a one_year_passes method, that when called, ages the tree one year
# Each year the tree grows taller (however much you think it should grow in a year),
# and after some number of years (your call) the tree should die.
# For the first few years, it should not produce fruit, 
# but after a while it should,
# and older tree produce more each year than younger trees
# You should be able to count_the_oranges and
# pick_an_orange (reduces the count by 1 and returns a string
# telling you how delicious it was, or it tells you there are no more oranges
# to pick this year)
# Make sure any oranges you don't pick one year fall off before the next year.

# ****Note: The assumptions made below are not factual and are only meant to provide
# ****specifications for this exercise.

# Assumptions (Specification):
# - Orange tree will take 15 years to grow.
# - Orange tree will grow up to 30 feet tall in 15 years.
# - Orange tree will grow at a rate of 2 feet per year.
# - Orange tree will die after 15 years.
# - Orange tree will start bearing fruits after 5 years.
# - After 5 years, the orange tree will initially produce 5 fruits.
# - After first year of fruit production, the orange tree will produce 
# - twice as many fruits until it has expired.
# - At any given time, a user(farmer) must be able to obtain real-time data
# - on number of oranges available on a particualr orange tree.
# - Picking an orange reduces the count by 1. In addition, the following string must
# - be returned: "That's so delicious!"
# - If no oranges are left, user must be informed no fruits are left.
# - Any oranges that aren't picked one year must all fall off before the next year.


class OrangeTree
  def initialize(tag)
    @tag = tag # used to keep track of the orange tree
    @height = 0 # seed planted
    @year = 0
    @fruit_count = 0
    @tree_alive = true
    puts "\nA new tree has been planted. Mother Earth thanks you!"
    puts "The tag is #{@tag}"
  end

  def height
    # returns height
    @height = @year * 2
  end

  def one_year_passes
    # when called, ages the tree by one year
    @year += 1
    @fruit_count = 0
    if @year > 15 
      puts "\nTree #{@tag} is dead! Plant more trees please!"
      @height = 0
      @fruit_count = 0
      @tree_alive = false
    end

    if @year < 6
      @fruit_count = 0      
    end

    if @year == 6
      @fruit_count = 5      
    end

    if @year > 6
      @fruit_count = (@previous_year_fruit_count * (1.5)).to_i
    end
    @previous_year_fruit_count = @fruit_count
    height
  end

  def state
    if @tree_alive
      puts "\nTree #{@tag} is #{@year} years old."
      puts "Tree #{@tag} is #{@height} feet tall."
      puts "Tree #{@tag} has #{@fruit_count} fruits."
    end
  end

  def pick_an_orange
    if @fruit_count == 0
      puts "\nThere are no oranges to be picked!"
    else
      @fruit_count -= 1
      puts "\nThat's so delicious!"
    end
  end

end

my_tree = OrangeTree.new("123456789")

10.times {my_tree.one_year_passes}
my_tree.state
23.times {my_tree.pick_an_orange}
my_tree.state
my_tree.pick_an_orange
my_tree.one_year_passes
my_tree.state
