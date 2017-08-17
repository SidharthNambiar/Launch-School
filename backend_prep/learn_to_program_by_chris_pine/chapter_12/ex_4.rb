# Learn To Program
# Chapter 12 : New Classes of Objects
# Birthday Helper

# Write a program to read in names and birth dates from a text file.
# It should ask you for a name.
# You type one in, and it tells you when that person's next birthday will be.
# Also, how old they will be.


arr = []
birthday_hash = {}
date_of_birth = ''

# 1. Read names and birth dates from a text file

Dir.chdir '/home/hardirishbatman/Documents/Launch-School/backend_prep/learn_to_program_by_chris_pine/chapter_12'

filename = "birthdays.txt"

read_string = File.read filename

# 2. Separate each line and place in an array
read_string.each_line do |line| 
  mod = line.chomp.split(",",2)
  arr << mod
end

# 3. Generate a hash out of the array in the following format:
# hash = {"full name" => "date of birth"}
arr.each do |value|
  birthday_hash[value.first] = value.last.strip
end


def find_year(year_month_day)
   arr = []
   arr =  year_month_day.split(",")
   year = arr.last.strip
   6.times {year_month_day.chop!}
   year.to_i
end

def find_month(month_day)
  months = {"Jan" => 1,  "Feb" => 2,
          "Mar" => 3,  "Apr" => 4,
          "May" => 5,  "Jun" => 6,
          "Jul" => 7,  "Aug" => 8,
          "Sep" => 9,  "Oct" => 10,
          "Nov" => 11, "Dec" => 12 }
  numerical_month = nil
  months.each do |month, number|
    if month_day.match(month)
      numerical_month = number
    end
  end
  month_day.reverse!
  4.times {month_day.chop!}
  month_day.reverse!
  numerical_month
end


def find_day(day)
  day
end

def find_age(year,month,day)
  time_born = Time.gm(year,month,day)
  current_time = Time.new 
  age = ((current_time-time_born)/60/60/24/365).to_i
end

def next_birthday(month,day)
  time_now = Time.now
  birthday = Time.gm(time_now.year, month, day)
  
  if birthday < time_now
    puts "The next birthday is on: #{month}/#{day}/#{(time_now.year) + 1}."
  else
    puts "The next birthday is on: #{month}/#{day}/#{time_now.year}."
  end

end

puts "\nPlease enter the full name."
full_name = gets.chomp

if birthday_hash.include?(full_name)
 puts "\n#{full_name} was born on #{birthday_hash[full_name]}."
 date_of_birth << birthday_hash[full_name]
 year = find_year(date_of_birth)
 month = find_month(date_of_birth)
 day = find_day(date_of_birth.to_i)

 age = find_age(year,month,day)
 puts "#{full_name} is currently #{age} years old."
 next_birthday(month,day)
 puts "On the next birthday, #{full_name} will be #{age+1} years old."

else
  puts "That name doesn't exist in the database."
end






