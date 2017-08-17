# Learn To Program
# Chapter 13: Creating New Classes, Changing Existing Ones
# Extend Built-in Classes

unshuffled = ["cat", "dog","tiger", "zebra","cat"]

class Array

  def shuffle
    shuffled_arr =[]
    while self.length > 0
      random_index = rand(self.length)
      shuffled_arr << self[random_index]
      self.delete_at(random_index) 
    end
    shuffled_arr
  end

end




puts "\nHere's the unshuffled array:"
p unshuffled
puts "\nHere's the sorted array:"
p unshuffled.shuffle