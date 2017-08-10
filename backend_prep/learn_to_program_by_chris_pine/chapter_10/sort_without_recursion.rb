# Learn To Program
# Chapter 10: There's Nothing New to Learn in Chapter 10
# sorting without recursion

# smallest to largest

unsorted = ["cat", "zebra","tiger", "cat"]

def sort(unsorted_array)

  sorted = []
 

  while unsorted_array.length > 0

    smallest_value = unsorted_array[0]
    index_to_delete = unsorted_array[0]

    for value in unsorted_array
      if value <= smallest_value
        smallest_value = value 
        index_to_delete = unsorted_array.index(smallest_value)
      end
    end
# Iterating using the each method
=begin

    unsorted_array.each_with_index do |number,index|      
      if number <= smallest_value
        smallest_value = number
        index_to_delete = index
      end
    end
=end

    sorted << smallest_value
    unsorted_array.delete_at(index_to_delete)

  end

  return sorted

end
  
puts "Here's the unsorted array:"
p unsorted
puts "\nHere's the sorted array:"
p sort(unsorted)


