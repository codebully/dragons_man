<<<<<<< HEAD
def new_player
	$player = { :player_name => "", 
				:class => "", 
				:health => 100, 
				:str => 10, 
				:xp => 1, 
				:cash => 0,
				:inventory => @inventory = []
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
=======
class Player
	def initialize
		puts "What's your name, #{$insults.sample}?"
		@name = gets.chomp
		@health = 100
		@str = 10
		@xp = 0
		@cash = 0
>>>>>>> classes
	end
	attr_accessor :name, :health, :str, :xp, :cash
end

<<<<<<< HEAD
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
			:health => 10 + rand(40),
			:str => 1 + rand(5),
			:cash => rand(10)
		},

		midget = {
			:name => @names.sample,
			:class => 'Angry Midget',
			:health => 10 + rand(30),
			:str => 1 + rand(3),
			:cash => rand(7)
		},

		pigeon = {
			:name => @names.sample,
			:class => 'pigeon',
			:health => 1 + rand(6),
			:str => 1 + rand(2),
			:cash => rand(2)
		},

		zombie = {
			:name => @names.sample,
			:class => 'zombie',
			:health => 1 + rand(25),
			:str => 1 + rand(4),
			:cash => rand(6)
		}
	]

	@monster = monster.sample
=======
class Dragon
	def initialize 
		@name = $names.sample
		@health = 1 + rand(50)
		@str = 1 + rand(5)
		@cash = 1 + rand(10)
	end
	attr_accessor :name, :health, :str, :cash
>>>>>>> classes
end
