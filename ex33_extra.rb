i = 0
nnumbers = []

def populate(i, upto)
    numbers = []
  while i < upto
    puts "At the top i is #{i}"
    numbers.push(i)
    
    i = i + 1
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
    puts "new loop"
    puts
  end
  puts "Numbers in the loop:"
  puts numbers 
  puts 
  return numbers
end

print "Please enter UPTO. > "
upto = STDIN.gets.chomp().to_i
puts
nnumbers = populate(i, upto).to_a
puts "numbers:" 

nnumbers.each do |num|
  puts num
end
