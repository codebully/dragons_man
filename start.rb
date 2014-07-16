load 'rules.rb'
load 'insults.rb'

def treasure
  puts 'Nice one! You fell into a hole and found a ton of treasure'
  puts 'You wanna stuff your pocket or build way out of the hole?'
  puts 'I\'m just saying, this is REALLY nice treasure and you should just take it all.'
  treasure_taken = gets.chomp()

  if treasure_taken.include?('take')
    puts 'Good boy.'
    puts 'You are Rich! RICH! RICH!!!'
    sleep 1
    puts 'Also, you starved to death.'
    death
  elsif treasure_taken.include?('build')
    puts 'You live another day. But you are kinda broke.'
    puts "Anyway, you keep walking around like a #{$insults.sample} and end up..."
    sleep 1
    puts 'Right back at the intersection.'
    first_step
  end

end

def fight
  puts 'You enter a room with a dragon, an irate looking midget and a door.'
  puts 'Which one would you rather kick?'
  first_fight = gets.chomp()
  first_fight = first_fight.downcase

  if first_fight == 'dragon'
    sleep 2
    puts "Well, you\'re an absolute #{$insults.sample}. It is a DRAGON you #{insults.sample}. A REAL DRAGON."
    puts 'He basically just eats and breathes fire. That\'s his ONLY function.'
    sleep 2
    puts ''
    puts 'So, obviously, he ate you and burped up some fire. You die. Bye.'
    death
  elsif first_fight == 'midget'
    sleep 2
    puts 'Urgh, were you ever like told, not to kick angry looking fellas?'
    puts "Guess what, #{$insults.sample}, he kicked back. Hard. You are dead. Bye."
    death
  elsif first_fight == 'door'
    puts 'We got a live one here!'
    puts 'Way to go, smarty pants. You are now back at the intersection.'
    first_step
  else puts 'I did not understand that. Please try again.'
    fight
  end
end

def first_step
  puts 'You can go left or right. Which one is it gonna be homie?'
  $intersection_choice = gets.chomp()
  translate_arrows

  if $intersection_choice == 'l'
    puts 'You went left!'
    fight
  elsif $intersection_choice == 'r'
    puts 'You went right!'
    treasure
  else
    system 'clear'
    puts 'please try again.'
    first_step
  end

end

def death
  puts ''
  puts 'Womp Womp'
  puts 'Start again?'
  restart = gets.chomp()
  if restart.include?('y')
    start
  else
    system 'clear'
    puts 'FORMATTING C:\\'
  end
end

def start
  system "clear"
  puts 'What is your name, wanderer?'
  $player_name = gets.chomp()

  if $player_name == 'Bob'
    $player_class = 'God' #add cheat mode where no harm can befall Bob.
  end

  puts "Hello #{$player_name}, you awaken, no recollection of anything at all, at an intersection. Uh Oh!"
  puts 'What the heck am I doing here, man? -- you ask yourself.'
  puts 'Well, my troubled friend, I JUST BLOODY TOLD YOU.'
  sleep 2
  puts 'YOU ARE STANDING AT AN INTERSECTION. '
  sleep 1
  puts '...probably not for the first time.'
  first_step
end

start