# das erste argument definiert die datei, mit der gearbeitet wird
input_file = ARGV[0]

# Funktion print_all wird initialisiert, das Argument ist die Datei
def print_all(f)
# Liest den Inhalt der Datei aus und gibt ihn aus
  puts f.read()
# Beendet die Funktion
end

# Funktion rewind wird initialisiert, das Argument ist die Datei
def rewind(f)
# seek(amount, whence=IO::SEEK_SET) (http://www.ruby-doc.org/core-1.9.3/IO.html)
# IO::SEEK_SET  => Seeks to the absolute location given by _amount_ 
# amount = 0, also sprint er an den Anfang der Datei
  f.seek(0, IO::SEEK_SET)
# Beendet die Funktion
end

# Funktion print_a_line wird initialisiert, 1. Argument ist die Zeilenanzahl, zweite ist die Datei
def print_a_line(line_count, f)
# Schreibt die Zeilennummer gefolgt von dem Inhalt der Zeile 
  puts "#{line_count} #{f.readline()}"
# Beendet die Funktion
end

# Öffnet die zu Beginn übergebene Datei
current_file = File.open(input_file)

puts "---"
puts "First let's print the whole file:"
puts    # (a blank line)

# Funktion print_all wird mit current_file aufgerufen
print_all(current_file)

puts "---"
puts "Now let's rewind, kind of like a tape."

# Programm springt wieder an den Anfang der Datei
# (Spult an den Anfang zurück, genau wie bei VHS-Kasetten bspw.
rewind(current_file)

puts "---"
puts "Let's print three lines:"

# Die Datei ist durch das rewinden wieder am Anfang, also müssen wir
# current_line auf 1 setzen. Würden wir current_line auf 2 setzen, stünde
# im Output "line_count" auf 2, "f.readline" würde aber trotzdem die erste
# Zeile ausgeben (weil wir ja auf Anfang zurückgespult haben).
current_line = 1    # current_line == 1
# Funktion print_a_line wird aufgerufen
print_a_line(current_line, current_file)

# current_line wird um eines erhöht, beim Lesen der Zeile bleibt der PC 
# am Ende des Lesevorganges stehen, so dass er automatisch die zweite Zeile
# für "f.readline" auslesen wird. Um die am Bildschirm ausgegebene Zeilen-
# angabe ("line_count") zu berichtigen, wird diese um eines erhöht. 
current_line = current_line + 1     # current_line == 2
# Funktion print_a_line wird aufgerufen 
print_a_line(current_line, current_file)

# selbes Spiel wie eben
current_line = current_line + 1     # current_line == 3
# Funktion print_a_line wird aufgerufen 
print_a_line(current_line, current_file)
