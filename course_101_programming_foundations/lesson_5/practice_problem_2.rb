# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 2

# How would you order this array of hashes based on the year of publication
# of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

puts "Method 1:"

unsorted_years = books.map do |item|
  item[:published].to_i
end

sorted_years = unsorted_years.sort

result = sorted_years.map do |year|
    books.select do |item|
      item[:published].to_i == year
    end
end

p result.flatten
