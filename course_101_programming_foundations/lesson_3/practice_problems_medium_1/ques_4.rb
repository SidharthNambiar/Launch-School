# 101 Programming Foundations
# Lesson 3: Practice Problems
# Practice Problems: Medium 1 - Question 4

# Alyssa was asked to write an implementation of a rolling buffer. 

# Elements are added to the rolling buffer and if the buffer becomes full, 
# then new elements that are added will displace the oldest elements in the buffer.

# She wrote two implementations saying, 
# "Take your pick. Do you like << or + for modifying the buffer?". 

# Is there a difference between the two, other than what operator 
# she chose to use to add an element to the buffer?

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# Answer:
# Yes, there is a difference between the two methods.
# rolling_buffer1 mutates the caller, which means that
# the original array that was passed in will be modified.

# rolling_buffer2, however doesn't mutate the caller; therefore
# it will always return a new array. It will upto the caller to 
# update the orignal array after the method call.