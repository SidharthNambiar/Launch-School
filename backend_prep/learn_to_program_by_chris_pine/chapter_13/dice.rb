# Learn To Program
# Chapter 13: Creating New Classes, Changing Existing Ones


class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)    
  end

  def showing
    @number_showing
  end

  def cheat(num)
    num < 7 ? @number_showing = num : "Invalid Entry!"
  end
end

#my_dice = [Dice.new,Dice.new,Dice.new]

#my_dice.each {|dice| puts dice.roll}

puts Die.new.cheat(6)


