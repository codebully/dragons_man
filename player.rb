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

# method to call random monster
# array of monsters
# each monster in hash
# then pop a sample out of array.
# TODO: Add another layer when monsters are grouped by class. 
# dragons w/ dragons, etc. this way you can pull out a dragon when you need to.
# TODO: randomize attributes within a range. 
# TODO: randomize names.

def ran_monster

	monster = [

		dragon = {
			:name => @names.sample,
			:class => 'Dragon',
			:health => 50,
			:str => 5,
			:cash => 10
		},

		midget = {
			:name => @names.sample,
			:class => 'midget',
			:health => 30,
			:str => 3,
			:cash => 7
		},

		pigeon = {
			:name => @names.sample,
			:class => 'pigeon',
			:health => 5,
			:str => 1,
			:cash => 1
		},

		zombie = {
			:name => @names.sample,
			:class => 'zombie',
			:health => 1 + rand(25),
			:str => 1 + rand(4),
			:cash => 5
		}
	]

	@monster = monster.sample
end
