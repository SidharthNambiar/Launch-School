# Learn To Program
# Chapter 10: There's Nothing New to Learn in Chapter 10
# sorting using recursion

# smallest to largest

unsorted = ["cat", "zebra","tiger", "cat"]

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

puts "Here's the unsorted array:"
p unsorted
puts "\nHere's the sorted array:"
p sort_recursively(unsorted)








