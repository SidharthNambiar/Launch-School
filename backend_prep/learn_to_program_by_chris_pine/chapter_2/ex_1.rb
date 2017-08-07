# Learn To Program
# Chapter 2: Numbers
# Exercise 1

# Write a program that tells you the following:

# 1. Hours in a year. How many hours are in a year?

  hours_in_a_year = 365 * 24
  puts "There are #{hours_in_a_year} hours in a year."

# 2. Minutes in a decade. Hoy many minutes are in a decade?
  
  minutes_in_a_year = 60 * hours_in_a_year
  minutes_in_a_decade = 10*minutes_in_a_year +(2*24*60) # accounting for a min. of 2 leap years within the decade
  puts "There are #{minutes_in_a_decade} minutes in a decade."

# 3. You age in seconds. How many seconds old are you?

  age_in_years = 32
  seconds_in_a_year = 60*minutes_in_a_year
  age_in_seconds = age_in_years*seconds_in_a_year
  puts "I am #{age_in_seconds} seconds old."

# 4. Our dear author's age. If I am 1,160 million seconds old, how old am I?

  author_age_in_seconds = 1_160_000_000
  author_age_in_years = author_age_in_seconds/seconds_in_a_year
  puts "The author is #{author_age_in_years} years old."




