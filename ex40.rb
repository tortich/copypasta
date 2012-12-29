cities = {'CA' => 'San Francisco', 'MI' => 'Detroit', 'FL' => 'Jacksonville'}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

# Function "find_city" is defined, expects two variables
def find_city(map, state)
# map == hash, state == key, checks whether key "state" exists in the hash "map"
  if map.include? state
  # if the key exists, it returns the value for the key "state" of the hash "map"
    return map[state]
  else
  # if the key does not exist in the hash, then return "Not found."
    return "Not found."
  end
end

# ok, pay attention!
# We now define a "Method object". It represents a bit of code and a context in 
# which it executes. 
#
# 'method(:find_city)' references the method we created in lines 7 - 16 ("def find_city")
# 
# we assign this method the hash 'cities' and the corresponding key ':find'
# 
cities[:find] = method(:find_city)

while true 
  print "State? (Enter to quit)"
# user types in the state that he wants to know the capital of
  state = gets.chomp

# if the user enters nothing, the loop will be exited  
  break if state.empty?
  
  #this line is the most important ever! study!
# By typing 'cities[:find].call' , we execute the code associated with it, in this
# case 'method(:find_city)', which in turn executes the 'def find_city' method 
# defined earlier.
# The variables passed along this funtion are "cities" and "state". "state" is the
# input the user just typed in, and cities is the name of the hash that we created
# at the beginning of the code. So what we called "map" in the definition of the 
# function is here "cities". "state" is called "state" in the initial function 
# as well. 
# The following line does exactly the same as typing:
#  puts find_city(cities, state)

  puts cities[:find].call(cities, state)

# It gets easier to understand when we read the code backwards:
# 1. state and city are...
# 2. passed as parameters to...
# 3. a proc at...
# 4. :find inside...
# 5. the hash cities...
# 6. and finally printed on the screen
#
end 
