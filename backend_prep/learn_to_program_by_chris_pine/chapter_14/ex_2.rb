# Learn To Program
# Chapter 14: Blocks and Procs
# Grandfather Clock

# Write a method that takes a block and calls it once for
# each hour that has passed.
# Hint: You can use Time.new.hour to get the current hour.


def chime(&ding_dong)

  current_hour_24 = Time.new
  current_hour_12 = current_hour_24.strftime("%I").to_i

  current_hour_12.times {ding_dong.call}



end

chime {puts "Ding Dong!"}