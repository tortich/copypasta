name = "Zed A. Shaw"
age = 35 # not a lie
height = 74 #inches
height_in_cm = height /  0.393701
weight = 180 #lbs
weight_in_kg = weight / 2.20462 
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "That equals roughly %d cms." % height_in_cm
puts "He's %d pounds heavy." % weight
puts "That equals roughly %d KGs." % weight_in_kg
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
    age, height, weight, age + height + weight]
    

