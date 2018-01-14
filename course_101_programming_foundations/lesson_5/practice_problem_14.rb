# Course 101 Programming Foundations
# Lesson 5: Advanced Ruby Collections
# Practice Problem 14

# Given this data structure write some code to return an array containing the 
# colors of the fruits and the sizes of the vegetables. 
# The sizes should be uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

puts "The return value should look like this:"

p [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# step 1: iterate through the hash and check the type
# step 2: if type is fruit then save the colors of the fruit in a new array and make sure to capitalize it
# 		  if type is vegetable then save the sizes in the new array and make sure to uppercase it


calculated_result = hsh.map do |_, details|
	if details[:type] == 'fruit'
		return_val = []
		details[:colors].map do |color|
			color.capitalize
		end
	else
		details[:size].upcase
	end
				
end

puts "\nThis is my return value: "
p calculated_result



