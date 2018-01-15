# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 16

# A UUID (universal unique identifier) is a type of identifier often used as a way to uniquely identify items
# ...which may not all be created by the same system.
# That is, without any form of synchronization, two or more separate computer systems
# can create new items and label them with a UUID with no significant chance of stepping on each other's toes.

# It accomplishes this feat through massive randomization. The number of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections 
# like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# UUID Characteristics
# Sequence: 8-4-4-4-12
# Made up of lower case alphabets and integers

# us #sample to randomly pick an element from an array




def generate_uuid()

	arr_of_characters = (0..9).to_a + ('a'..'f').to_a
	
	sect_1 = []
	while sect_1.size < 8
		sect_1 << arr_of_characters.shuffle.sample
	end
	sect_1 << '-'
	
	sect_2 = []
	while sect_2.size < 4
		sect_2 << arr_of_characters.shuffle.sample
	end
	sect_2 << '-'

	sect_3 = []
	while sect_3.size < 4
		sect_3 << arr_of_characters.shuffle.sample
	end
	sect_3 << '-'

	sect_4 = []
	while sect_4.size < 4
		sect_4 << arr_of_characters.shuffle.sample
	end
	sect_4 << '-'

	sect_5 = []
	while sect_5.size < 12
		sect_5 << arr_of_characters.shuffle.sample
	end

	uuid = sect_1.join + sect_2.join + sect_3.join + sect_4.join + sect_5.join

	uuid
	
end

puts "UUID using method 1: "
puts generate_uuid()

# Method 2 utilizes Launch School's solution

def generate_uuid_method_2()

	arr_of_characters = (0..9).to_a + ('a'..'f').to_a

	uuid = []

	selections = [8,4,4,4,12]

	selections.each_with_index do |char_count, ind|

		char_count.times do |i|
			uuid << arr_of_characters.shuffle.sample
		end
		uuid << '-' if ind < (selections.size - 1)
	end
	
	uuid.join
end

puts "\nUUID using method 2: "
puts generate_uuid_method_2()