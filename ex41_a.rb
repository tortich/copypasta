# Prints the command prompt beginning " > "
def prompt()
  print "> "
end

# Process.exit(1)
def death()
  quips = ["You died. You kinda suck a this.",
    "Nice job, you died...jackass.",
    "Such a luser.",
    "I have a small puppy that's better at this."]
  puts quips[rand(quips.length())]
  Process.exit(1)
end

# returns ":laser_weapon_armory", ":death" or ":laser_weapon_armory"
def central_corridor()

ceco = <<CENTRALCORRIDOR
  The Gothons of Planet Percal #25 have invaded your ship and destroyed
  your entire crew. You are the last surviving member and your last
  mission is to get the neutron destruct bomb from the Weapons Armory,
  put it in the bridge, and blow the ship up after getting into an 
  escape pod.
  \n
  You're running down the central corridor to the Weapons Armory when
  a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume
  flowing around his hate filled body. He's blocking the door to the
  Armory and about to pull a weapon to blast you.
CENTRALCORRIDOR

shoot = <<SHOOTING
  Quick on the draw you yank out your blaster and fire it at the Gothon.
  His clown costume is flowing and moving around his body, which throws
  off your aim. Your laser hits his costume, but misses him entirely. This
  completely ruins his brand new costume his mother bought him, which
  makes him fly into an insane rage and blast you repeatedly in the face until
  you are dead. Then he eats you. 
SHOOTING

dodge = <<DODGING
  Like a world class boxer you dodge, weave, slip and slide right
  as the Gothon's blaster cranks a laser past your head.
  In the middle of the artful dodge your foot slips and you
  bang your head on the metal wall and pass out.
  You wake up shortly after only to die as the Gothon stomps on
  your head and eats you.
DODGING

joke = <<JOKING
  Lucky for you they made you learn Gothon insults in the academy.
  You tell the one Gothon joke you know:
  Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr.
  The Gothon stops, tries not to laugh, then busts out laughing and can't move.
  While he's laughing you run up and shoot him square in the head
  putting him down, then jump through the Weapon Armory door.
JOKING

  puts ceco    
  prompt()
  action = gets.chomp()
  
  if action == "shoot!"
    puts shoot
    return :death
  
  elsif action == "dodge!"
    puts dodge
		return :death
	
	elsif action == "tell a joke"
    puts joke
		return :laser_weapon_armory
	
	else 
		puts "DOES NOT COMPUTE!"
		return :central_corridor
	end
end

# returns ":the_bridge" or ":death"
def laser_weapon_armory()
	puts "You do a dive roll into the Weapon Armory, crouch and scan the room"
	puts "for more Gothons that might be hiding. It's dead quiet, too quiet."
	puts "You stand up and run to the far side of the room and find the"
	puts "neutron bomb in its container. There's a keypad lock on the box"
	puts "and you need the code to get the bomb out. If you get the code"
	puts "wrong ten times then the lock closes forever and you can't"
	puts "get the bomb. The code is 3 digits."
	code = "%s%s%s" % [rand(9)+1, rand(9)+1, rand(9)+1]
	print "keypad > "
	guess = gets.chomp()
	guesses = 0
	help = 0
	# integrate cheat code here
		
	while guess != code and guesses < 10
		if guess == "help"
			help += 1
			guesses -= 1

			if help == 1
				puts "Hint: %d%s%s" % [code[0], "?", "?"]

				elsif help == 2
				puts "Hint: %d%d%s" % [code[0], code[1], "?"]

			elsif help == 3
				puts "Hint: %d%d%d" % [code[0], code[1], code[2]]
			else 
				puts "The passphrase is: #{code}" 
			end			
		end
		
		puts "BZZZZZZZD!"
		guesses += 1
		print "keypad > "
		guess = gets.chomp
	end
	
	if guess == code 
		puts "The container clicks open and the seal breaks, letting gas out."
		puts "You grab the neutron bomb and run as fast as you can to the"
		puts "bridge where you must place it in the right spot."
		return :the_bridge
		
	else
		puts "The lock buzzes one last time and then you hear a sickening"
		puts "melting sound as the mechanism is fused together."
		puts "You decide to sit there, and finally a Gothon blows up the"
		puts "ship from their ship and you die."
		return :death
	end
end
	
# returns ":escape_pod", ":the_bridge" or ":death"
def the_bridge()
	puts "You burst onto the Bridge with the neutron destruct bomb"
	puts "under your arm and surprise 5 Gothons who are trying to"
	puts "take control of the ship. Each of them has an even uglier"
	puts "clown costume than the last. They haven't pulled their"
	puts "weapons out yet, as they see the active bomb under your"
	puts "arm and don't want to set it off."

	prompt()
	action = gets.chomp
	
	if action == "throw the bomb"
		puts "In a panic you throw the bomb at the group of Gothons"
		puts "and make a leap for the door. Right as you drop it a"
		puts "Gothon shoots you right in the back killing you."
		puts "As you die you see another Gothon frantically try to disarm"
		puts "the bomb. You die knowingly they will probably blow up when"
		puts "it goes off."
		return :death
		
	elsif action == "slowly place the bomb"
		puts "You point your blaster at the bomb under your arm"
		puts "and the Gothons put their hands up and start to sweat."
		puts "You inch backward to the door, open it, and then carefully"
		puts "place the bomb on the floor, pointing your blaster at it."
		puts "You then jump back through the door, punch the close button"
		puts "and blast the lock so the Gothons can't get out."
		puts "Now that the bomb is placed you run to the escape pod to"
		puts "get off this tin can."
		return :escape_pod
	else 
		puts "DOES NOT COMPUTE!"
		return :the_bridge
	end
end

# Process.exit(0) or returns ":death"
def escape_pod()
	puts "You rush through the ship desperately trying to make it to"
	puts "the escape pod before the whole ship explodes. It seems like"
	puts "hardly any Gothons are on the ship, so your run is clear of"
	puts "interference. You get to the chamber with the escape pods, and"
	puts "now need to pick one to take. Some of them could be damaged"
	puts "but you don't have time to look. There's 5 pods, which one"
	puts "do you take?"
	
	good_pod = rand(5)+1
	# integrate cheat code here
	print "[pod #]> "
	guess = gets.chomp()
	
	if guess == "help"
		guess = good_pod
	end
	
	if guess.to_i != good_pod
		puts "You jump into the pod %s and hit the eject button." % guess
		puts "The pod escapes out into the void of space, then"
		puts "implodes as the hull ruptures, crushing your body"
		puts "into a jam jelly."
		return :death
	else
		puts "You jump into the pod %s and hit the eject button." % guess
		puts "The pod easily slides out into space heading to"
		puts "the planet below. As it flies to the planet, you look"
		puts "back and see your ship implode then explode like a"
		puts "bright star, taking out the Gothon ship at the same"
		puts "time. You won!"
		Process.exit(0)
	end
end

# Wraps the methods from above ("the rooms") into a key of the hash ROOMS
ROOMS = {
	:death => method(:death),
	:central_corridor => method(:central_corridor),
	:laser_weapon_armory => method(:laser_weapon_armory),
	:the_bridge => method(:the_bridge),
	:escape_pod => method(:escape_pod),
}

# map == ROOMS, so the different levels of the game
# start == start level
def runner(map, start)
	next_one = start

	# Loops until infinity, so the methods called have to exit the game.
	while true
		# room == ROOMS[start level], we initialize room with the method "start level" of the hash ROOMS
		# room has now the function "def central_corridor" stored in it
		room = map[next_one]
		# Whenever a room is entered, the next line is printed
		puts "\n-------"
		# next_one now gets assigned the result of the function of the current room
		# (whatever the "return" command of the current function returns)
		# The code of the room stored in "room" is now being executed ("called")
		next_one = room.call()
		# the loop starts again, but now with the new room stored in the variable "next_one"
	end
end

runner(ROOMS, :central_corridor)