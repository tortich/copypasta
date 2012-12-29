def nummer(n, tstart_min, tstart_sec)
	anzahl = 0
	wdh = n
	nummern = []
	
	while anzahl < wdh
		nummern.push(rand(5))
		anzahl += 1
		if anzahl % 10000 == 0
			puts "Durchgang #{anzahl}"
		end
	end
	
	puts
	puts "Zahlen insgesamt: %s"	%	nummern.length()
	puts "Anzahl '0': %d (%f percent) "	%	[nummern.count(0), nummern.count(0).to_f / nummern.length.to_f * 100]
	puts "Anzahl '1': %d (%f percent) "	%	[nummern.count(1), nummern.count(1).to_f / nummern.length.to_f * 100]
	puts "Anzahl '2': %d (%f percent) "	%	[nummern.count(2), nummern.count(2).to_f / nummern.length.to_f * 100]
	puts "Anzahl '3': %d (%f percent) "	%	[nummern.count(3), nummern.count(3).to_f / nummern.length.to_f * 100]
	puts "Anzahl '4': %d (%f percent) "	%	[nummern.count(4), nummern.count(4).to_f / nummern.length.to_f * 100]
	puts
	tnow_min = Time.now.min
	tnow_sec = Time.now.sec
	
	puts
	puts "Start: #{tstart_min}:#{tstart_sec}"
	puts "End: #{tnow_min}:#{tnow_sec}"
	puts	
	
end

puts "Wie viele Durchgaenge willst Du laufen lassen?"
print " > "
durchgaenge = gets.chomp().to_i

tstart_min = Time.now.min
tstart_sec = Time.now.sec

nummer(durchgaenge, tstart_min, tstart_sec)

# wollte funktion hinzufügen, die die dauer der operation anzeit, aber habs nicht hinbekommen