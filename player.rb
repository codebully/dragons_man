class Player
	def initialize
		puts "What's your name, #{$insults.sample}?"
		@name = gets.chomp
		@health = 100
		@str = 10
		@xp = 0
		@cash = 0
	end
	attr_accessor :name, :health, :str, :xp, :cash
end

class Dragon
	def initialize 
		@name = $names.sample
		@health = 1 + rand(50)
		@str = 1 + rand(5)
		@cash = 1 + rand(10)
	end
	attr_accessor :name, :health, :str, :cash
end
