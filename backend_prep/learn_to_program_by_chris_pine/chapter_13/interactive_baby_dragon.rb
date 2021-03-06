# Learn To Program
# Chapter 13: Creating New Classes, Changing Existing Ones
# Interactive Baby Dragon


# Write a program that lets you enter commands such as 'feed' and 'walk'.
# Call those methods on your dragon.
# 

class Dragon

  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # he's full
    @stuff_in_intestine = 0 # he doesn't need to go
    puts "#{@name} is born."
  end

  def feed
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do 
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke."
      end
    end
    if @asleep
      @asleep = false
      puts "#{@name} waskes up slowly."
    end
  end

  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts "He briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts = "...but wakes when you stop."
    end
  end

  private
  # "private" means that the methods defined here are methods internal to the object.
  # (You can feed your dragon, but you can't ask him whether he's hungry.)

  def hungry?
    @stuff_in_belly <=2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly-1
      @stuff_in_intestine = @stuff_in_intestine+1
    else
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!!"
      exit 
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end
    if hungry?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "He wakes up suddenly"
      end
      puts "#{@name} does the potty dance..."
    end
  end
end


pet= Dragon.new("Drufus")
  puts "What would you like to do? Feed or walk the dragon?"
  
while true
  activity = gets.chomp.downcase

  if activity == 'feed'
    pet.feed
    puts "What would you like to do now?"
  elsif activity == 'walk'
    pet.walk
    puts "What would you like to do now?"
  elsif activity == 'i hate dragons'
    puts "Bye!"
    break
  else
    puts "Sorry, ivalid entry!"
    puts "You can only feed or walk the dragon. Try again!"
    puts "To abandon the dragon, type 'I hate dragons'"
  end

end



