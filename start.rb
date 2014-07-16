load 'rules.rb'
load 'insults.rb'
#load 'player.rb'

def prompt()
  print "> "
end

def treasure
  puts 'Nice one! You fell into a hole and found a ton of treasure'
  puts 'You wanna stuff your pocket or build way out of the hole?'
  puts 'I\'m just saying, this is REALLY nice treasure and you should just take it all.'
  prompt; treasure_taken = gets.chomp()

  if treasure_taken.include?('take')
    puts 'Good boy.'
    puts 'You are Rich! RICH! RICH!!!'
    #sleep 1
    puts 'Also, you starved to death.'
    death
  elsif treasure_taken.include?('build')
    puts 'You live another day. But you are kinda broke.'
    puts "Anyway, you keep walking around like a #{$insults.sample} and end up..."
    #sleep 1
    puts 'Right back at the intersection.'
    first_step
  end

end

def first_step
  puts 'You can go left or right. Which one is it gonna be homie?'
  prompt; $intersection_choice = gets.chomp()
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

def start
  system "clear"
  puts 'What is your name, wanderer?'
  prompt; $player_name = gets.chomp()

    if $player_name == 'Bob'
    $player_class = 'God' #add cheat mode where no harm can befall Bob.
    $player_health = 200
    $player_str = rand(10)
    $player_xp = 1
  else
    $player_str = rand(6)
    $player_health = 100
  end

  puts "Hello #{$player_name}, you awaken, no recollection of anything at all, at an intersection. Uh Oh!"
  puts 'What the heck am I doing here, man? -- you ask yourself.'
  puts 'Well, my troubled friend, I JUST BLOODY TOLD YOU.'
  #sleep 2
  puts 'YOU ARE STANDING AT AN INTERSECTION. '
  #sleep 1
  puts '...probably not for the first time.'
  first_step
end

start

