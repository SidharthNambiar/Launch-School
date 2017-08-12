# Learn To Program
# Chapter 10: There's Nothing New to Learn in Chapter 10
# Exercise 2: Dictionary Sort

# Capitalized words come first.



unsorted = ["my", "is","York", "New", "world"]

def find_min(arr)
  smallest_value = arr.first
  for value in arr
    if value <= smallest_value
      smallest_value = value
    end
  end
  smallest_value
end

def sort_recursively(unsorted_array, sorted_array=[])
  sorted_array << unsorted_array.delete_at(unsorted_array.index(find_min(unsorted_array)))
  sort_recursively(unsorted_array, sorted_array) unless unsorted_array.size.zero?
  sorted_array
end

def find_capitalized_words(arr)
  capitalized_words = []
  arr.each do |value|
    capitalized_words << value if value == value.capitalize
  end
  capitalized_words  
end

def find_uncapitalized_words(arr)
  uncapitalized_words = []
  arr.each do |value|
    uncapitalized_words << value if value != value.capitalize
  end
  uncapitalized_words  
end

def dictionary_sort(unsorted_arr)
  unsorted_capitalized_words = find_capitalized_words(unsorted_arr)
  unsorted_uncapitalized_words = find_uncapitalized_words(unsorted_arr)

  sorted_capitalized_words = sort_recursively(unsorted_capitalized_words)
  sorted_uncapitalized_words = sort_recursively(unsorted_uncapitalized_words)

  while sorted_uncapitalized_words.length > 0
    sorted_capitalized_words << sorted_uncapitalized_words.delete_at(0)
  end

  sorted_capitalized_words
end

puts "Here's the unsorted array:"
p unsorted
puts "\nHere's the sorted array:"
p dictionary_sort(unsorted)
