# encoding: utf-8
# Game of Clones

def prompt()
  print "> .. "
end

def hangar(audioprozessor)
  not_valid = audioprozessor
  puts
  puts "| Du bist im Hangar des blauen Quasaren."
  puts "| Du blickst auf ein Raumschiff [1], daneben steht ein Getränkeautomat [2]."
  puts "| Vor einem Blumenladen [3] steht ein Fremder [4]. Beende Deine Reise mit [5]."
  puts "| Wohin gehst Du?"
  puts

  prompt; next_move = gets.chomp
  
  if next_move == "1"
    raumschiff(0)
  elsif next_move == "2"
    automat(0)
  elsif next_move == "3"
    blumenladen(0)
  elsif next_move == "4"
    fremder(0)
  elsif next_move == "5"
    exit()
  else
    not_valid = not_valid + 1
    if not_valid > 2
      puts
      puts "| Dein Audioimplantat ist durchgebrannt. Du stirbst."
      exit()
    else
      puts
      puts "| Dein Audioimplantat hat Dich nicht verstanden."
      puts
      hangar(not_valid)
    end
  end
end

def raumschiff(audioprozessor)
  not_valid = audioprozessor
  puts
  puts "| Du bist im Raumschiff. Unordentlich ist es, aber schön."
  puts "| Der Captain [1] und sein Commander [2] schauen Dich an."
  puts "| Gehst Du zurück zum Hangar [3]?"
  puts
    
  prompt; next_move = gets.chomp
  
  if next_move == "1"
    captain(0)
  elsif next_move == "2"
    commander(0)
  elsif next_move == "3"
    hangar(0)
  else
    not_valid = not_valid + 1
    if not_valid > 2
      puts
      puts "| Dein Audioimplantat ist durchgebrannt. Du stirbst."
      puts
      Process.exit()
    else
      puts
      puts "| Dein Audioimplantat hat Dich nicht verstanden."
      puts "| Formuliere Deine Wünsche deutlicher."
      puts
      hangar(not_valid)
    end
  end  
end

def captain(audioprozessor)
  i = audioprozessor
  if audioprozessor > 2
    nicht_verstanden("captain")
    raumschiff(0)
  else
    puts
    puts "| Captain: \"Was machst Du auf meinem Schiff? Suchst Du etwa Arbeit?\""
    puts
    prompt; arbeit = gets.chomp
    if arbeit == "ja"
      game_sort()
    elsif arbeit == "nein"
      puts
      puts "| Captain: \"Dann verschwinde! Landstreicher kann ich nicht ausstehen!\""
      puts
      raumschiff(0)
    else 
      puts
      puts "| Captain: \"Aus was für einem Winkel der Galaxie kommst Du denn? Sprich deutlich!\""
      puts
      i = i + 1
      captain(i)
    end
  end
end

def commander(audioprozessor)
  if audioprozessor > 2
    nicht_verstanden("commander")
    raumschiff(0)
  else
    puts
    puts "| Commander: \"Wieso muss mir das immer passieren? Heute hat meine Frau Geburtstag,\""
    puts "| Commander: \"aber ich habe noch nicht einmal ein Geschenk für Sie.\""
    puts "| Commander: \"Und ich muss noch das Schiff reparieren bevor wir losfliegen.\""  
    puts "| Commander: \"Kannst Du mir helfen?\""
    puts
    prompt; next_move = gets.chomp
    commander_blumen(audioprozessor, next_move)
  end
end

def commander_blumen(audioprozessor, next_move)
  if next_move == "ja"
    puts
    puts "| Commander: \"Großartig! Bitte besorg' mir einen schönen Blumenstrauß.\""
    puts "| Commander: \"Aber beeil' Dich, wir müssen bald weg!\""
    puts 
  elsif next_move == "nein"
    puts
    puts "| Commander: \"Was soll ich denn nur meiner Frau sagen? ...\""
    puts "| Commander (murmelt): \"Kosmische Strahlung, Sandwürmer.. \""
    puts "| Commander (murmelt): \"Nein, das hatte schon das letzte Mal nicht geklappt..\""  
    puts
  else 
    puts
    puts "| Commander: \"Ein simples ja oder nein genügt mir schon .. \""
    puts
    audioprozessor = audioprozessor + 1
    commander(audioprozessor)
  end
  raumschiff(0)
end

def automat(audioprozessor)
  puts
  puts "| Ein ziemlich heruntergekommener Automat. Ob er wohl noch funktioniert?"
  puts "| Gib ihm einen Tritt, entweder leicht [1], mittel [2] oder fest [3]."
  puts
  prompt; kick = gets.chomp.to_i
  tritte = [1, 2, 3]
  tritte.sort_by! {rand}
  if kick == tritte[0]
    puts
    puts "| Hey! Eine Coladose! Und noch nicht mal angerostet!"
    puts "| Die kann immer mal nützlich werden."
    puts
    hangar(0)
  else
    puts
    puts "| Da hat sich etwas bewegt..Du scheinst auf dem richtigen Weg zu sein.."
    puts
    automat(0)
  end  
end

def blumenladen(audioprozessor)
  puts
  puts "| Eine große Auswahl von Blumen von Hannah McKay."
  puts "| Sieht aber geschlossen aus..."
  puts
  hangar(0)
end

def fremder(audioprozessor)
  not_valid = audioprozessor
  if not_valid > 2
    puts
    puts "| Dein Audioimplantat ist durchgebrannt. Du bist tot."
    exit()
  else
    puts
    puts "| Eine zwielichtige Gestalt.."
    puts "| Er lädt Dich zu einem Würfelspiel ein - spielst Du mit?"
    puts
    prompt; next_move = gets.chomp
    if next_move == "ja"
      wuerfel()
    elsif next_move == "nein"
      puts 
      hangar(0)
    else 
      puts
      puts "| Dein Audioimplantat hat Dich nicht verstanden."
      puts
      not_valid = not_valid + 1
      fremder(not_valid)
    end
    hangar(0)
  end
end

def wuerfel()
  puts 
  puts "| Fremder: \"Ah, ein wehrter Spieler, komm näher, es ist sehr einfach!\""
  puts "| Fremder: \"Ich habe hier einen Würfelbecher mit 2 Würfeln. Du gewinnst,\""
  puts "| Fremder: \"wenn du errätst, welche Zahlen gewürfelt wurden.\""
  puts "| Fremder: \"Bereit? Gib Deine Zahl ein und dann sehen wir ob Du gewonnen hast.\""
  puts "| Fremder: \"Los geht's!\""
  puts
  becher = []
  becher = [rand(6), rand(6)]
  w1 = becher[0]
  w2 = becher[1]
  prompt; guess = gets.chomp.to_i
  if guess == w1 or guess == w2
    puts 
    puts "| Fremder: \"Hey, verdammt gut! Du hast gewonnen!\""
    puts "| Fremder: \"Ich hatte eine #{w1} und eine #{w2} gewürfelt.\"" 
  else
    puts
    puts "| Fremder: \"Hey, schade! Du hast verloren!\""
    puts "| Fremder: \"Ich hatte eine #{w1} und eine #{w2} gewürfelt.\""
  end
  puts
  fremder(0)
end

def game_sort()
  kisten = ["Kokain", "Sternenstaub", "Whiskey", "LSD", "Meth"]
  i = 1  
  puts
  puts "| Captain: \"Bei der Landung sind einige unserer Kisten durcheinander geraten.\""
  puts "| Captain: \"Bring' sie wieder in die richtige alphabetische Reihenfolge:\""
  puts 
  kisten = kisten.sort_by { rand }

  kisten.each do |ware|
    puts
    puts "#{i}. #{ware}"
    i = i + 1
  end
  puts
  i = 1
  print "| Gib die korrekte Reihenfolge ein, in der die Waren verstaut werden müssen."

  kisten_user = []

  kisten.each do |ware|
    puts
    puts "| An welcher Stelle soll #{ware} stehen? "
    puts
    prompt; stelle = gets.chomp.to_i - 1
    if stelle < 0 or stelle >= 5
      puts
      puts "| Captain: \"Es gibt ja nur 5 Kisten! Hast Du etwa Sternenstaub geschnüffelt?\""
      puts "| Captain: \"Scheiß Junkies.. lass gut sein, ich mach es alleine...\""
      puts 
      raumschiff(0)
    else
      kisten_user[stelle] = "#{ware}" 
    end
  end
  
  kisten_sortiert = kisten.sort!
  if kisten_user == kisten_sortiert
    puts
    puts "| Captain: \"Ah...bist Du schon fertig?\""
    puts "| Captain: \"Nicht schlecht, da hab ich schon schlimmeres gesehen..Danke!\""
    puts
    raumschiff(0)
#    return clones = 2
  else
    puts
    puts "| Captain: \"Das soll geordnet sein? Das kann ja meine tote Oma besser!\""
    puts "| Captain: \"Mach Dich gleich nochmal an die Arbeit [1] oder verschwinde von meinem Schiff[2]!\""
    puts
    prompt; next_move = gets.chomp
    if next_move == "1"
      game_sort()
    elsif next_move == "2"
      hangar(0)
    else
      puts
      puts "| Captain: \"Was war das?!! Verschwinde!!\""
      puts
      hangar(0)
    end
  end
#  puts "Anzahl clones nach Spiel: #{clones}."
end

def nicht_verstanden(sprecher)
  puts
  puts "| #{sprecher.capitalize}: Es hat einfach keinen Sinn mit Dir zu reden..."
  puts
end

def exit()
  puts 
  puts "Vielen Dank für den Fisch! <o>>>\<\>" 
  Process.exit()
end

# programmstart

# game_sort()
# commander(0)

# Spielstart
hangar(0)
