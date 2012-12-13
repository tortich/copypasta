filename = ARGV.first
script = $0

puts "We're going to erase #{filename}: "
puts "[==-- #{filename} --==]"
target_preview = File.open(filename)
puts target_preview.read()
target_preview.close()
puts "[==-- EOF --==]"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening file..."
target = File.open(filename, "w")

puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")
target.close

puts "#{filename} has been overwritten. It now conatins the following:"
puts "[==-- #{filename} --==]"
target_review = File.open(filename)
puts target_review.read()
puts "[==-- EOF --==]"
puts "we're closing #{filename} now."
target_review.close()
