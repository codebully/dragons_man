def new_player
	$player = { :player_name => "", 
				:class => "", 
				:health => 100, 
				:str => 10, 
				:xp => 1, 
				:cash => 0
				}

	prompt; $player[:name] = gets.chomp

	if $player[:name].downcase == "bob"
		$player = { 	:name => "Bob", 
					:class => "God", 
					:health => 200, 
					:str => 20,
					:xp => 1,
					:cash => 0
					}
	else
		$player[:player_class] = "punter"
	end
end

#MONSTERS:

#generally monsters should have classes
#so a Dragon class w/ range of values. 
#next iteration whenever.

# dragon = {
# 	:name => "Spanky",
# 	:health => 50,
# 	:str => 5,
# 	:cash => 10
# }

# midget = {
# 	:name => "Barry",
# 	:health => 30,
# 	:str => 3,
# 	:cash => 7
# }

# pigeon = {
# 	:name => "Boris",
# 	:health => 5,
# 	:str =>1,
# 	:cash => 1
# }