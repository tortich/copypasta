def populate(i, upto)
  numbers = []
  for n in (i..upto)
#   puts "Number now: #{n}."
    numbers.push(n)
  end
  return numbers
end

print "With which number would you like to start? > "
i = STDIN.gets.chomp().to_i

print "How high do you want to count? > "
upto = STDIN.gets.chomp().to_i

# print "How much should the numbers get incremented by? > "
# up = STDIN.gets.chomp().to_i

numbers = populate(i, upto)

puts "The numbers: "

# Print to screen
for num in numbers
  puts num
end

# Write to file
aFile = File.open("ex33.txt", "a+")
aFile.write("\n\n#{Time.now}\n")
for num in numbers
  aFile.write("%d\t" % num)
  aFile.write("\n")
end
# aFile.write("\n")
# aFile.write(numbers)
# aFile.write("\n")
aFile.close
