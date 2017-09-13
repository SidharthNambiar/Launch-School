# Course 101 Programming Foundations
# 101-109 Small Problems
# Easy 2: How Many?

# Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(vehicle_types)
  vehicle_count = {}
  while vehicle_types.size > 0
    key = vehicle_types.shift
    if vehicle_count.has_key?(key)
      vehicle_count[key] += 1
    else
      vehicle_count[key] = 1
    end
  end
  puts "Method 1:"
  vehicle_count.each {|k,v| puts "#{k} => #{v}"}
end

def count_occurrences_alternate_method(vehicle_types)
  vehicle_count = {}

  vehicle_types.each {|element| vehicle_count[element] = vehicle_types.count(element)}
  puts "\nMethod 2:"
  vehicle_count.each {|k,v| puts "#{k} => #{v}"}
end

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 
            'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 
            'motorcycle', 'motorcycle', 'car', 'truck']
            
count_occurrences_alternate_method(vehicles)


# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2