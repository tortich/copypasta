def prompt()
  print "> "
end

def gold_room()
  puts "This room is full of gold. How much do you take?"
  
  prompt; next_move = gets.chomp
  puts "#{next_move} is next_move"
  if next_move.to_f > 0
    how_much = next_move.to_f()
  else
    dead("Man, learn to type a number.")
  end
  
  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
end

def dead(why)
  puts "#{why} Good job!"
  Process.exit(0)
end


gold_room()
