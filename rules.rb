def translate_arrows
  $intersection_choice = $intersection_choice.downcase
  case
    when $intersection_choice.start_with?('l')
      $intersection_choice = 'l'
    when $intersection_choice.start_with?('r')
      $intersection_choice = 'r'
    when $intersection_choice.start_with?('u')
      $intersection_choice = 'u'
    when $intersection_choice.start_with?('d')
      $intersection_choice = 'd'
    else
      $intersection_choice = nil
  end
end

def roll
  1 + rand(6)
end

def victory
  $player[:str] += 1
  $player[:cash] = $player[:cash] + @monster[:cash]
    puts "You won, #{$insults.sample}!"
    puts "You gained +1XP point and #{@monster[:cash]} cash!"
    puts ""
    puts "It's been allocated into your strength because we are running a podunk operation."
    puts ""
    puts "It's #{$player[:str]} now, by the way. Your strength."
    puts "And you have #{$player[:cash]} monies."
    sleep 0.5
    puts "Dazed, somehow you find yourself at the same intersection. AGAIN."
  first_step
end

def death
  puts ''
  puts 'Womp Womp'
  puts 'Start again?'
  prompt; restart = gets.chomp()
  if restart.include?('y')
    start
  else
    system 'clear'
    puts 'FORMATTING C:\\'
  end
end

def player_turn

  $player_attack = $player[:str] + roll + $player[:xp]
  @monster[:health] = @monster[:health] - $player_attack
  puts "Your attack did #{$player_attack} damage. #{@monster[:name]} now has #{@monster[:health]} health left!"

  if @monster[:health] < 0 
    sleep 3
    victory
  end
end

def monster_turn

  $monster_attack = roll + @monster[:str]
  $player[:health] = $player[:health] - $monster_attack
  puts "The #{$monster_name} attacks! It does #{$monster_attack} damage!"
  puts "You have #{$player[:health]} left."

  if $player[:health] < 0 
    death
  end
end

def fight_loop
  puts "You face the mighty #{@monster[:name]}, probably a #{@monster[:class]}"
  while $player[:health] > 0 && @monster[:health] > 0  
    player_turn
    monster_turn
    sleep 0.75
  end
end

def fight
  puts 'You enter a room with a bunch of pissed off looking creatures. Uh-oh.'
  puts 'Someone shouts at you, "You lookin to start somethin?!"'
  prompt; wanna_fight = gets.chomp()
  wanna_fight = wanna_fight.downcase

    if wanna_fight == 'yes'
      ran_monster
      fight_loop
      
    elsif wanna_fight == 'no'
      first_step
    else
      puts "I don't understand, #{$insults.sample}."
      fight
    end
    
  end

