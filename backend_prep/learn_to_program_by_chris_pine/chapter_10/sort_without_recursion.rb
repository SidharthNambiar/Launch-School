# Learn To Program
# Chapter 10: There's Nothing New to Learn in Chapter 10
# sorting without recursion

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

def sort(unsorted_array)
  sorted = []
  while unsorted_array.length > 0
    index_to_delete = unsorted_array.index(find_min(unsorted_array))
    sorted << unsorted_array.delete_at(index_to_delete) 
  end
  return sorted
end
  
puts "Here's the unsorted array:"
p unsorted
puts "\nHere's the sorted array:"
p sort(unsorted)


