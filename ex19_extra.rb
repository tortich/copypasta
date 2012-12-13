#
# Ex 19, Extra credit
#

def pixels(height, width)
	pixels = height * width
	puts "Your resolution displays #{pixels} pixels."
end

# pixels(1024, 600)

# print "Your height: "
# height = STDIN.gets.chomp().to_i
# print "Your width: "
# width = STDIN.gets.chomp().to_i

# read every line without loading the whole document and print the line it found
# File.foreach("ex19.txt") {|x| print "GOT ", x}

a = IO.readlines("ex19.txt")
height_new = a[0].to_i
width_new = a[1].to_i
height_old = a[2].to_i
width_old = a[3].to_i

pnew = pixels(height_new, width_new)
pold = pixels(height_old, width_old)
p = (pnew * pold)

print "Your new monitor has #{p} more pixels than your old one."

# pixels(height, width)