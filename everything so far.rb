# Everything I have learned so far, Ex. 22

$0
# This is the name of the file that is being executed. 
# Example: 
# puts "My name is #{$0}."
# => "My name is everything_so_far.txt."

Argument variable, ARGV
# This variable holds the arguments you pass to your Ruby script when you run it. 
# It's in all caps because it's a constant, meaning you shouldn't change the value 
# once it's been assigned. 
# Example: 
# first, second, third = ARGV
# => Take whatever is in ARGV, unpack it, and assign it to all of these variables on the left in order.
# => You have to pass the variables to the funtion like this:
# ruby crazy_program.rb first second third
# crazy_method(first, second, third)

Array
# Is an ordered list of items. 
# Numbering starts at "0", the second item can be adressed by array[1]
# Negative numbering is possible, array[-1] points to the last item
# Example: new_array = [1, 2, 3]
# Example: new_array = ["Dandy", "Sandy", "Mandy"]
# Example: new_array = ["Dandy",
#  					"Sandy",
#						"Mandy"]
# http://www.ruby-doc.org/core-1.9.3/Array.html
# 
# Using methods on Arrays
# see p. 447ff of "Programming Ruby 1.9, The Pragmatic Programmer's Guide"
#
# .at(x)    # tries to return the item at position x, (-1) gives the last 
#           # element, returns nil if position is not existant in the array
# .clear    # empties the array
# .empty?   # returns true if array is empty
# .join     # returns the concatenation of every item inside the array
# .join("-")# same as above, but puts - between the items
# .pop      # deletes the last item of the array, returns whatever is removed, 
#             or nil if the array is empty
# .pop(5)   # same as .pop. but deletes the last 5 items of the array
# .push()   # appends the given argument(s)
# .replace  # replaces the contents of the array with the given argument(s)
#

Classes
# Classes are more powerful versions of hashes and the foundation of "Object Oriented Programming".
# Classes start with a capital letter (BooksInStore, ClassIsAwesome). 
# A Class is definition, or a set of rules that define which characteristics the objects 
# of that class will have. 
# 
# # Creating new objects of a class &
# # Initialisation values of these objects
# New objects of that class can be created by calling Classname.new. You can
# define the start values (initial values) when the objects are created by using the initialize-method.
# 
# # Instance variables (@variable)
# In order to not lose the content of the variables once the function ends, we transform the variables into
# instance variables by writing the "@"-sign in front of it. This "instance variable" is now attached to 
# the specific object and stored within that object. The "@" now becomes part of the name of the variable.
# 
# # attr_reader / Reading object variables ("attributes")
# The instance variables are unique to each object and generally not accessible by other objects. In order to
# access them it is necessary to include 
# "attr_reader :nameofvariable1, :nameofvariable2" after the "class" line.
# They then can be called like this "puts "Number = #{a.number}"
#
# attr_writer / Writing object variables ("attributes")
# Writing to instance variables / attributes is enabled by including
# "attr_writer :nameofvariable1, :nameofvariable2" after the "class" line.
# 
# attr_accessor / Reading & Writing to object variables ("attributes")
# Enablining both read and write access to instance variables / attributes is enabled by including
# "attr_accessor :nameofvariable1, :nameofvariable2" after the "class" line.
# 
#
# # Naming conventions
# @number     | Instance variable
# :number     | the "name" of the variable number
# number      | the "value" of the variable number
#
# # Functions
# class.new   | Spawn a new object of the class
# @variable.inspect | Returns the name of the instance variable
#
# class Something
#   attr_reader :number
# 
#   def initialize()
#     @number = 0
#   end
# end
#
# a = Something.new
# 
# or
# 
# class BooksInStore
#   def initialize(isbn, price)
#     @isbn = isbn
#     @price = Float(price)
#   end
# end
# 
# a = BooksInStore.new("isbn1", 3.14)


Comments
# everything after the # will be viewed as comment and ignored by Ruby
	
Comparison of numbers and size 
# <	less-than
# > greater-than
# <= less-than-equal
# >= greater-than-equal
# <=> "spaceship operator, compares two values, returnig -1, 0, or +1 depending 
#      on whether the first is less than, equal to, or greater than the second
# == equal
# === "case equality" http://truffles.me.uk/rubys-equality-operator
# != not equal
# <=> Combined comparison operator. Returns 0 if first operand equals second, 
#											1 if first operand is greater than the second and 
#											-1 if first operand is less than the second.
# .eql? True if the receiver and argument have both the same type and equal values.
# Example: 1 == 1.0 returns true, but 1.eql?(1.0) is false.

Escape Sequences
# Used for inputting difficult-to-type characters into a string. Some common escape sequences:
# \"	Insters " 
# \'	Insters '
# \\	Insters \
# \n	Inserts a line break (New line)
# \t	Inserts a tab
# \v	Inserts a vertical tab 
# \b	Deletes the preceding character (Backspace)
# \a 	Bell / Alert, usually the computer "beeps" once

Files
# You can open and write files as well as creating new files. 
# Reading files works like old VCR recorders, it stops where
# you left off reading the file. This is why you have to 
# manually rewind the file if you want to go back to the beginning
# of the opened file. 
#
# # Creating files
# new_file = File.new("filename", "mode")
# 	(...process the file...)
# File.close
# 
# # Opening files (A)
# open_file = File.open("filename", "mode")
# 	(...process the file...)
# File.close
#
# # Opening files (B)
# File.open("filename", "mode") do |aFile|
# 	(...process the file...)
# end
#
# # Writing files
# filename = ARGV.first
# aFile = File.open("filename", "w")
# aFile.write("text you want written in the file")
# aFile.write("\n")
# aFile.write("you can write a second line if you want etc.")
# aFile.close("")
# 
# # Emptying files (Truncating)
# filename = ARGV.first
# aFile = File.open("filename", "w")
# aFile.truncate(target.size)
# aFile.close()
#
# # Rewinding Files
# input_file = ARGV
# def rewind(f)
#   f.seek(0, IO::SEEK_SET)
# end
# rewind(input_file)
#
# # Reading and printing the whole file
# input_file = ARGV
# current_file = File.open(input_file, r) 	# Note: File opened in read only mode (r)
# def print_all(file)
#   puts file.read()
# end
#
# # Reading and printing specific lines
# input_file = ARGV
# current_file = File.open(input_file, r) 	# Note: File opened in read only mode (r)
# current_line = 1
# def print_a_line(line_count, file)
#   puts "#{line_count} #{file.readline()}"
# end
# print_a_line(current_line, current_file)
#
# # Checking if a File already exists
# to_file = ARGV
# check = File.exists? to_file
# => check = 	True if file already exists
#				False if file does not already exist
#
# # Reading lines individually into an array 
# The class File is a subclass of the class IO. The class IO also has some 
# methods which can be used to manipulate files.
# One of the IO class methods is IO.readlines. This method returns the contents 
# of the file line by line. The following code displays the use of the 
# method IO.readlines:
#
# arr = IO.readlines("filename")
# puts arr[0]
# puts arr[1]
# In this code, the variable arr is an array. Each line of the file test will 
# be an element in the array arr. Therefore, arr[0] will contain the first line, 
# whereas arr[1] will contain the second line of the file.
#
# # "Modes" of accessing files:
# r		Read-only mode. The file pointer is placed at the beginning of the 
# 		file. This is the default mode.
# r+	Read-write mode. The file pointer will be at the beginning of the file.
# w		Write-only mode. Overwrites the file if the file exists. If the file 
# 		does not exist, creates a new file for writing.
# w+	Read-write mode. Overwrites the existing file if the file exists. If 
#		  the file does not exist, creates a new file for reading and writing.
# a		Write-only mode. The file pointer is at the end of the file if the 
#	  	file exists. That is, the file is in the append mode. If the file does 
#		  not exist, it creates a new file for writing.
# a+	Read and write mode. The file pointer is at the end of the file if 
#		  the file exists. The file opens in the append mode. If the file does 
#		  not exist, it creates a new file for reading and writing.

Functions (aka "Methods")
# 1. They name pieces of code the way variables name strings and numbers.
# 2. They take arguments the way your scripts take ARGV.
# 3. Using #1 and #2 they let you make your own "mini scripts" or "tiny commands".
#
# Variables used in functions are not connected to variables used in the rest
# of the script. In the example below, the variables arg1 and arg2 that we are
# calling the function with, could be numbers, variables with other names or 
# even be mathematical euqations (see Example 2).
#
# Example:
# def puts_two(arg1, arg2)
# 	puts "arg1: #{arg1}, arg2: #{arg2}"
# end
# 
# Example:
# amount_of_cats = 250
# def puts_two(3 + 5, amount_of_cats)
# 	puts "arg1: #{arg1}, arg2: #{arg2}"		# arg1 == 8 , arg2 == 250
# end
# 
# # Checklist for creating funtions
# Did you start your function definition with def?
# Does your function name have only characters and _ (underscore) characters?
# Did you put an open parenthesis ( right after the function name?
# Did you put your arguments after the parenthesis ( separated by commas?
# Did you make each argument unique (meaning no duplicated names).
# Did you put a close parenthesis ) after the arguments?
# Did you indent all lines of code you want in the function 2 spaces?
# Did you close your function body by typing "end"?
#
# # Checklist for calling / running / using functions
# Did you call/use/run this function by typing its name?
# Did you put ( character after the name to run it? (this isn't required, but is idiomatic)
# Did you put the values you want into the parenthesis separated by commas?
# Did you end the function call with a ) character.
#
# # Return values 
# In Ruby, the last evaluated statement in a method is its return value. You can be more 
# explicit if you want and type return a + b, but that is totally optional. 
# You can return anything that you can put to the right of an = 
# Example:
# def add(arg1, arg2)
	# puts "Adding #{arg1} + #{arg2}."
	# arg1 + arg 2
# end
# age = add(30, 5)	# age gets assigned the result of the function add (35 in this case)
# ... is the same as ... 
# def add(arg1, arg2)
	# puts "Adding #{arg1} + #{arg2}."
	# return arg1 + arg 2
# end
# age = add(30, 5) 	# age gets assigned the result of the function add (35 in this case)

gets
# Receives input given by the user WITH a newline at the end.
# Example: newvariable = gets
#
# aFile.gets reads a line from the file object aFile.

gets.chomp
# Receives input given by the user WITHOUT a newline at the end
# Example: newvariable = gets.chomp

Hashes (Dictionaries, maps, associative arrays)
# Similar to arrays, but you index the entries not by numbers, but by anything
# you want to name it. When you store a value in a hash, you actually supply
# two objects - the index (which is called the "key") - and the entry to be 
# stored with that key. 
# 
# Creating hashes
# hash = {:marke => 'Opel', :baujahr => '1998', :price => '23_000'}
# 
# Working with hashes
# hash[:preis]      # gibt den beim key "preis" hinterlegten wert zurück
# puts hash(:preis) # gibt den beim key "preis" hinterlegten wert zurück
# hash.length       # returns the number of objects stored in the hash
# hash.delete(:preis)   # deletes the key "preis" and returns its value      
# hash.include? :preis  # returns "true" if key "preis" is present in the hash
# hash.include? "name"  # returns "true" if key " "name" " is present in the hash
# hash.empty?           # returns "true" if the hash has no keys stored in it
# 

IO
# see "Files"

Libraries
# Features that can be included in your program. Usually provide added
# specialised functionalities like specific methods etc.
# See "require"

Math operators
# + plus
# - minus
# / slash
# * asterisk
# ** exponential
# % percent

Multi-line Strings
# You can create mulit-line strings by using <<
# Example:
# long_string = <<PARAGRAPH
# Everything in here will be
# treated as text and will be
# stored exacrly like it is typed in here.
# The NAME repetition signals the end of 
# this wonderful string.
# PARAGRAPH

puts 
# Writes to the screen WITH a newline at the end
# Example: puts "Hello World!"

print
# Writes to the screen WITHOUT a newline at the end
# Example: print "Hello World!"

proc (Procedure)
# Code stored in a variable is called procedure, or PROC
# 
# 
# 
# 
# 
# 
# 


Ranges
#  
# Ranges are created using the .. and ... range operators.
# .. creates an inclusive range
# ... creates a range that excludes the specified high value
# 
# Examples:
# 1..10
# 'a'..'z'
# 0..."cat".length
#
# range = []
# for i in (0..5)
# # appends 0, then 1, then 2, and so on to the array
#   range.push(i)
# end
# 
# range = 0...9
# # populates range with numbers 0 to 8
# # range.to_a # converts the range to an array [0, 1, 2, 3, 4, 5, 6, 7, 8]
# 
#
# Ranges can be converted to arrays using (1..10).to_a
#
# Methods usable on ranges
# range.include?(5) # is 5 included in the range?
# range.min # delivers the minimum value of the range
# range.max # delivers the maximum value of the range
# range.reject {|i| i < 5 } # delivers all items >= 5
# range.inject(:+) # delivers the sum of all items in the range


require
# You have to tell Ruby which libraries. require loads the library (including 
# extension libraries) lib when it's first called. require will not load the 
# same library more than once. If no extension is specified in lib, require 
# tries to add .rb,.so, etc., to it. 
# 
# Example: require 'open_uri'

Return value
# see "Functions"

STDIN
# Used for explicitly reading input from the user prompt instead of a file.
# Example: 
# user_input = STDIN.gets.chomp()

Strings
# A string is a text surrounded by " " or ' '
# Example: puts "This text is a string"
# 
# You can let Ruby insert variables into strings as well:
# variable = "text"
# puts "This %s will be inserted into the string at runtime." % variable
# 
# title = "Fashion Nugget"
# artist = "Cake"
# puts "%s released their latest album called %s today." % [artist, title]
# 
# %s => Strings
# %d => Decimal numbers
# %i => Integer numbers
# %f => Floating point numbers
# http://www.tutorialspoint.com/ruby/ruby_builtin_functions.htm , Paragraph "Conversion Field Specifier:"
# See also: "Multi-line Strings"

String interpolation
# Another way to insert variables into strings is by using #{ }
# Example: 
# weather = "sunny"
# puts "It is #{weather} today."
#
# puts "The variable is #{weather.length} bytes long."

Symbols
# Symbols are constant names that you don't have to predeclare and that are 
# guaranteed to be unique. A symbol starts with a colon and is normally followed
# by some kind of name. Symbols are frequently used as keys in hashes.
# 
# Example:
# ROOMS = {
#   :key => 'value'     # :key is a symbol 
# }

Variables
# Local variables begin with a lowercase letter or _. 
# The scope of a local variable ranges from class, module, def, or do to 
# the corresponding end or from a block's opening brace to its close brace {}.
# Example: b = 3 		# Variable b is being assigned value of 3
# Example: x = b + 7 	# Variable x is being assigned the result of (b + 7)
# http://www.techotopia.com/index.php/Understanding_Ruby_Variables
# http://www.tutorialspoint.com/ruby/ruby_variables.htm
# 
# You can identify what type of value a variable holds by asking it directly:
# b.class 
# => Integer
# 
# Another method of getting the same information is by using the .kind_of? method:
# b.kind_of? Integer
# => True
# 
# b.empty?
# => returns true if no value has been stored in the variable
