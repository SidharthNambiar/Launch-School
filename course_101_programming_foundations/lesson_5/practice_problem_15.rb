# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 15

# Given this data structure write some code to return an array 
# which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# step 1: iterate through the array
# step 2: iterate through the hash
# step 3: check to see if any value in the array is odd, if it is move to the next iteration in the array
# 		  if no value is odd, store the hash in a new array
# step 4: return new array


# 0 is even
# 1 is odd

return_arr = []
valid_hsh = {}

arr.map do |hsh|
	hsh.each do |letter, arr_of_num|
		val = 0
		arr_of_num.each do |num|
			if num.odd?
				val = 1
				break
			end
			val = 0
		end

		if val == 1
			break # go to next hash
		else
			valid_hsh = {}
			valid_hsh[letter] = arr_of_num
		end
		return_arr << valid_hsh
		
	end
end

puts "This is the original array: "
p arr
puts "\nThis is the new array:"
p return_arr

# Misunderstood the question, the above code produces the following result:
# => [{:b=>[2, 4, 6]}, {:d=>[4]}, {:e=>[8]}, {:f=>[6, 10]}]

# The result should be the following:
# => [{:e=>[8], :f=>[6, 10]}]

# code below will address the expected result
