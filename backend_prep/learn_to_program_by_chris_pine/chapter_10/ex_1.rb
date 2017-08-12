# Learn To Program
# Chapter 10: There's Nothing New to Learn in Chapter 10
# Exercise 1: Shuffle

unshuffled = ["cat", "dog","tiger", "zebra","cat"]



def shuffle(arr)
  shuffled_arr =[]
  while arr.length > 0
    random_index = rand(arr.length)
    shuffled_arr << arr[random_index]
    arr.delete_at(random_index) 
  end
  shuffled_arr
end

puts "Here's the unshuffled array:"
p unshuffled
puts "\nHere's the sorted array:"
p shuffle(unshuffled)