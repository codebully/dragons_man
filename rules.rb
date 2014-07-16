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
  puts "You won, #{$insults.sample}!"
  puts "You gained +1XP point."
  puts "It's been allocated into your strength because we are running a podunk operation."
  puts "It's #{$player_str} now, by the way. Your strength."
  puts "Dazed, somehow you find yourself at the same intersection. AGAIN."
  $player_str += 1
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
  #roll dice, multiply by strength
  #monster_health - var attack
  $player_attack = $player_str + roll.to_i
  $monster_health = $monster_health - $player_attack
  puts "Your attack did #{$player_attack} damage. The monster now has #{$monster_health} health left!"

  if $monster_health < 0 
    sleep 3
    victory
  end
end

def monster_turn
    #roll dice, multiply by strength
    #player_health - var attack
  $monster_attack = roll + $monster_str
  $player_health = $player_health - $monster_attack
  puts "The #{$monster_name} attacks! It does #{$monster_attack} damage!"
  puts "You have #{$player_health} left."

  if $player_health < 0 
    death
  end
end

def fight_loop
  while $player_health > 0 && $monster_health > 0  
    player_turn
    monster_turn
    sleep 0.75
  end
end

def fight
  puts 'You enter a room with a dragon, an irate looking midget and a door.'
  puts 'Which one would you rather kick?'
  prompt; first_fight = gets.chomp()
  first_fight = first_fight.downcase

  if $player_class == "God"
    puts "#{$player_name} you are a god among men. You win."
    puts "It would be unfair to the dragon and midget, not to mention the door, if you were to fight them. "

  else

    if first_fight == 'dragon'
      $monster_health = 50
      $monster_str = 5
      $monster_name = 'dragon'
      fight_loop

    elsif first_fight == 'midget'
      $monster_health = 20
      $monster_str = 2
      $monster_name = 'midget'
      fight_loop
    elsif first_fight == 'door'
      puts 'We got a live one here!'
      puts 'Way to go, smarty pants. You are now back at the intersection.'
      first_step
    else puts 'I did not understand that. Please try again.'
      fight
    end
  end
end

