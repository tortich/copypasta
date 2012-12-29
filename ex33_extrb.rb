numbers = []

def populate(i, upto, up)
  upto = upto + 1
  numbers = []
  while i < upto
    puts "At the top i is #{i}"
    numbers.push(i)
    
    i = i + up
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end
  return numbers
end

print "With which number would you like to start? > "
i = STDIN.gets.chomp().to_i

print "How high do you want to count? > "
upto = STDIN.gets.chomp().to_i

print "How much should the numbers get incremented by? > "
up = STDIN.gets.chomp().to_i


numbers = populate(i, upto, up)

puts "The numbers: "

for num in numbers
  puts num
end
