puts "Please enter the line you want to display"
line = gets #die Variable line nimmt den eingegebenen Wert an

phrases = [
  "Hello World!", 
  "Hello Again", 
  "I like typing this.", 
  "This is fun.", 
  'Yay! Printing.', 
  "I'd much rather you 'not'.", 
  'I "Said" do not touch this.', 
  "what is the difference?", 
  'what is the difference?']

puts phrases[line.to_i] # Wert in eckiger Klammer gibt das Objekt des Arrays an, das angesprochen wird, Erster Wert = 0 


