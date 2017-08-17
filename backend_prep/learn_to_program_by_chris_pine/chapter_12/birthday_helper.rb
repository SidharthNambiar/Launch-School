# Learn To Program
# Chapter 12 : New Classes of Objects
# Birthday Helper (Author's solution)

birth_dates = {}

filename = "birthdays.txt"

File.read(filename).each_line do |line|
  line = line.chomp
  first_comma = 0

  # This while loop searches for the first comma in each line
  while line[first_comma] != ',' && first_comma < line.length
    first_comma = first_comma + 1
  end

  # the name variable is assigned all characters that come before the comma
  name = line[0..(first_comma - 1)] 

  # Here we assign the remaining characters to the variable date
  # In addition, negative indices are used
  #date = line[-12..-1]
  date = line[(first_comma+2..(line.length-1))]

  birth_dates[name]= date

end

puts birth_dates

puts "\nWhose birthday would you like to know?"
name = gets.chomp
date = birth_dates[name]

date == nil ? puts("Oooh, I don't know that one...") : puts(date[0..5]) 


