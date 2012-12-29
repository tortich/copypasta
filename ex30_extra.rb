cars = 8
carseats = 4
buses = 2
busseats = 20

max_car_pacity = carseats * cars
max_bus_pacity = busseats * buses

puts "%i people fit into our cars.\n" % max_car_pacity
puts "%d people fit into our buses.\n" % max_bus_pacity

print "How many people are going? > "
people = STDIN.gets.chomp().to_i

if people == 0  
  puts "Please enter a valid number and restart."
  exit
end

puts

# Autos ja, ein Bus wird jedoch nicht gefüllt
if people <= max_car_pacity and people < busseats
  puts "We should take the cars."
# 1 - 2 Busse werden gefüllt
elsif people >= busseats and people <= max_bus_pacity
  puts "We should take the buses."
# Mehr als 2 Busse werden gefüllt, weniger als 8 autos werden gefüllt
elsif people > max_bus_pacity and people - max_bus_pacity <= max_car_pacity
  puts "We should take all the buses and the cars."
#
# mehr als 2 Busse und 8 Autos werden gefüllt 
else  people > max_bus_pacity and people - max_bus_pacity > max_car_pacity
  puts "All buses and all cars are not enough, so we have to order 
        taxis for %d people." % (people - max_bus_pacity + max_car_pacity)
end



# Verbesserungsvorschläge

# Berechne die Anzahl der Busse und Autos, die benutzt werden
#   fullbuses = people / busseats
#  carsgoing = ( people - ( overbuspeople * busseats ) ).to_f / carseats.to_f

# Berechne die Anzahl der Leute, die jeweils in die Busse und Autos passen
#  overbuspeople = ( people - (( buses -1 ) * busseats )) % busseats 
#  overcarpeople = ( overbuspeople - (( cars - 1 ) * carseats )) % carseats
#      puts "\t#{overbuspeople} people have to take the car. 
