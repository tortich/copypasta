# returns :win or :loose
def start()
	puts "This is the first level."
	puts "Enter 1 to win, 2 to loose."
	z = gets.chomp()
	
	if z.empty? == true
		Process.exit(0)	
	
	elsif z == "1"
		return :win
	
	else
		return :loose
	end
end

# Process.exit(0)
def win()
	puts "You win!"
	Process.exit(0)
end

# Process.exit(0)
def loose()
	puts "You loose!"
	Process.exit(0)
end

ROOMS = {
	:start => method(:start),
	:win => method(:win),
	:loose => method(:loose)
}

# levels == ROOMS, start == startlevel
def spielen(levels, start)
	# next_lvl wird mit dem ersten level ("start") initialisiert
	# diese zusatzvariable brauchen wir, da sonst immer nur "start" 
	# als level in der while-Schleife unten nutzen würden. Wir wollen
	# jedoch die level wechseln können
	next_lvl = start
	
	while true
		# lvl wird mit als startlevel aus dem ROOMS initialisiert
		# start entspricht dabei der funktion "def start"
		lvl = levels[next_lvl]
		puts "\n-- -- -- --"
		next_lvl = lvl.call()
	end
end

spielen(ROOMS, :start)