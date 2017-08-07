# Learn To Program
# Chapter 7: Flow Control
# Exercise 1

# "99 Bottles of Beer on the Wall." 
# Write a program that prints ot the lyrics to that beloved classic, 
# "99 Bottles of Beer on the Wall."
# lyrics source: http://www.99-bottles-of-beer.net/lyrics.html

beer_count = 99

while beer_count > 2
  puts "\n#{beer_count} bottles of beer on the wall, #{beer_count} bottles of beer."
  puts "Take one down and pass it around, #{beer_count - 1} bottles of beer on the wall."
  beer_count -= 1
end

while beer_count < 3

  if beer_count == 2
    puts "\n#{beer_count} bottles of beer on the wall, #{beer_count} bottles of beer."
    puts "Take one down and pass it around, #{beer_count - 1} bottle of beer on the wall."
    beer_count -= 1
  elsif beer_count == 1
    puts "\n#{beer_count} bottle of beer on the wall, #{beer_count} bottle of beer."
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    beer_count -= 1
  else
    puts "\nNo more bottles of beer on the wall, no more bottles of beer."
    puts "Go to the store and buy some more, 99 bottles of beer on the wall."
    break
  end
    

end

