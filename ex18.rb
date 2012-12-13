# this one is like your scripts with ARGV
def puts_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can just do this
def puts_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes on argument
def puts_one(arg1)
	puts "arg1: #{arg1}"
end

# this one takes no arguments
def puts_none()
	puts "I got nothin'."
end

print "puts_two: "
puts_two("Zed","Shaw")
print "puts_two_again: "
puts_two_again("Zed","Shaw")
print "puts_one: "
puts_one("One")
print "puts_none: "
puts_none()

