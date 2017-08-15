# Learn To Program
# Chapter 11 : Reading and Writing, Saving and Loading...
# Build a better playlist

def first_half(arr)
  original_arr_length = arr.length/2
  split1 = arr.reverse
  first_half = []
  while (split1.length > original_arr_length)
    first_half << split1.pop    
  end
  first_half.reverse
end

def second_half(arr)
  original_arr_length = arr.length/2
  split2 = arr
  second_half = []
  while (split2.length > original_arr_length)
    second_half << split2.pop
  end
  second_half
end

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

def music_shuffle(arr1, arr2)
  shuffled_arr1 =[]
  while arr1.length > 0
    random_index = rand(arr1.length)
    shuffled_arr1 << arr1[random_index]
    arr1.delete_at(random_index) 
  end

  shuffled_arr2 =[]
  while arr2.length > 0
    random_index = rand(arr2.length)
    shuffled_arr2 << arr2[random_index]
    arr2.delete_at(random_index) 
  end
  
  while(shuffled_arr2.length > 0)
    random_index = rand(shuffled_arr2.length)
    shuffled_arr1 << shuffled_arr2[random_index]
    shuffled_arr2.delete_at(random_index) 
  end
  shuffled_arr1
end


Dir.chdir '/home/hardirishbatman/Music'


all_mp3s = Dir['*.mp3']
puts "\nThis is the original array:"
puts
p all_mp3s
sorted_array = sort_recursively(all_mp3s)
split1 = first_half(sorted_array)
split2 = second_half(sorted_array)

shuffled_playlist = music_shuffle(split1,split2)

puts "\nThis is the final shuffled list:"
puts
p shuffled_playlist





File.open 'playlist.m3u', 'w' do |f|
  shuffled_playlist.each do |mp3|
    f.write mp3+"\n"
  end

end

puts "Done"

