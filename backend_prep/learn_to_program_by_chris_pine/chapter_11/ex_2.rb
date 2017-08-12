# Learn To Program
# Chapter 11 : Reading and Writing, Saving and Loading...
# Build your own playlist


def shuffle(arr)
  shuffled_arr =[]
  while arr.length > 0
    random_index = rand(arr.length)
    shuffled_arr << arr[random_index]
    arr.delete_at(random_index) 
  end
  shuffled_arr
end


Dir.chdir '/home/hardirishbatman/Music'


all_mp3s = shuffle(Dir['*.mp3'])

File.open 'playlist.m3u', 'w' do |f|
  all_mp3s.each do |mp3|
    f.write mp3+"\n"
  end

end

puts "Done"

