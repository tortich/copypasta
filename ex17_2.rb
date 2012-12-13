from_file, to_file = ARGV
script = $0

# we could do these two on one line too, how?
# input = File.open(from_file)
# indata = input.read()

indata = File.open.read(from_file)

if (File.exists? to_file) == true
    puts " "
    puts "!! #{to_file} already exists !!"
    puts "If you do not want to overwrite it, press CTRL-C. Otherwise press ENTER."
    puts " "
    STDIN.gets
  else
    print "Copying in progress..."
end
  
output = File.open(to_file, "w")
output.write(indata)

puts "Alright, all done."
puts " "

output.close()
input.close()
