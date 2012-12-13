def add(a, b)
  puts "ADDING #{a} + #{b}"
  a + b
# Alternative way of writing:
# return a + b
end

def substract(a, b)
  puts "SUBSTRACTING #{a} - #{b}"
  a - b
# Alternative way of writing:
# return a - b
end

def multiply(a, b)
  puts "MULTIPLYING #{a} * #{b}"
  a * b
# Alternative way of writing:
# return a * b
end

def divide(a, b)
  puts "DIVIDING #{a} / #{b}"
  a / b
# Alternative way of writing:
# return a / b
end

# puts "Let's do some math with functions!"

age = add(3, 1)
# height = substract(78, 4)
# weight = multiply(90, 2)
iq = divide(18, 2)

# 300 + 54 / 98 * 98 * 9 + 45 - 4 * 3
# = (300 + (54 / 98 * 98 * 9) + 45 - (4 * 3)
# = (300 + (486) + 45 - 12)
# = 819
score = add(300, add(divide(54, multiply(98, multiply(98, iq))), substract(45, multiply(age, 3))))


puts "Score is #{score} and should be 819."
# WRONG :-/

# puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

## A puzzle for the extra credit, type it in anyway.
# puts "Here is a puzzle:"

# what = add(age, substract(height, multiply(weight, divide(iq, 2))))

# puts "That becomes: #{what}. Can you do it by hand?"

## Well, let's try to do it by hand!

# whathand = (age + (height - (weight * (iq /2))))

# puts "That becomes: #{whathand} by hand."
## Success!! :-D
