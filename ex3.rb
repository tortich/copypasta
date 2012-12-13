# Einleitung des Programms
puts "I will now count my chickens:"

# Anzahl Hennen: 30 durch 6, plus 25
puts "Hens", 25 + 30 / 6
# Anzahl Hähne, 25 mal 3, modulo 4 = 3, 100 - 3 = 97
puts "Roosters", 100 - 25 * 3 % 4

puts "I will now count my eggs:"

# 4%2 = 0, 1/4 = 0, also 3+2+1-5+0-0+6 = 7
puts 3 + 2 + 1 - 5 + 4 % 2 - 1 / 4 + 6

puts 4 % 2 
# Division wird bei der Nachkommastelle abgeschnitten
puts 1 / 4

# Um mit Nachkommastellen zu rechnen muss man die Zahlen mit ".0" initialisieren
puts "Division mit Nachkommastellen:"
puts 1.0 / 4.0

puts "Is it true that 3 + 2 < 5 - 7?"
puts 3 + 2 < 5 - 7

puts "What is 3 + 2?", 3 + 2
puts "What is 5 - 7?", 5 - 7

puts "Oh, that's why it's false."

puts "How about some more."

puts "Is it greater?", 5 > -2
puts "Is it greater or equal?", 5 >= -2
puts "Is it less or equal?", 5 <= -2

