load 'rules.rb'
load 'insults.rb'
load 'player.rb'
load 'names.rb'


def prompt()
  print "> "
end

def treasure
  puts 'Nice one! You fell into a hole and found a ton of treasure'
  @player.health -= 5
  puts "Ouch, by the way, you now have #{@player.health} health left."
  puts 'You wanna stuff your pocket or build way out of the hole?'
  puts 'I\'m just saying, this is REALLY nice treasure and you should just take it all.'
  prompt; treasure_taken = gets.chomp()

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
  @player = Player.new
  puts "Hello #{@player.name}, you awaken, no recollection of anything at all, at an intersection. Uh Oh!"
  puts 'What the heck am I doing here, man? -- you ask yourself.'
  puts 'Well, my troubled friend, I JUST BLOODY TOLD YOU.'
  sleep 2
  puts 'YOU ARE STANDING AT AN INTERSECTION. '
  sleep 1
  puts '...probably not for the first time.'
  first_step
end

start


