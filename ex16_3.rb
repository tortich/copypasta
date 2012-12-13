# http://ruby.learncodethehardway.org/book/ex16.html
#
# There's too much repetition in this file. Use strings, formats, and escapes to print 
# out line1, line2, and line3 with just one target.write() command instead of 6.


filename = ARGV.first
script = $0

puts "We're going to erase #{filename}: "
puts "[==-- Contents of #{filename} --==]"
target_preview = File.open(filename)
puts target_preview.read()
target_preview.close()
puts "[==-- EOF --==]"
puts "If you don't want that, hit CTRL-C (^C)."
puts "Hit RETURN to erase the contents in #{filename}."

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

target.write("%s\n%s\n%s\n" % [line1, line2, line3])
# target.write(line1 + "\n" + line2 + "\n" + line3 + "\n")

target.close

puts "#{filename} has been overwritten. It now conatins the following:"
puts "[==-- #{filename} --==]"
target_review = File.open(filename)
puts target_review.read()
puts "[==-- EOF --==]"
puts "Thank you for using Truncate3000."
target_review.close()
