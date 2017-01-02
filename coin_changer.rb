class CoinChanger

	attr_accessor :change
	attr_reader :coins

	def initialize()
		@change = {}
		@coins = {quarters: 25, dimes: 10, nickles: 5, pennies: 1}
	end

	def generate_minimum_coins(cents)
		coins.each do |coin, value|	
			if cents >= value
				@change[coin] = cents/value
				cents = cents%value
			end
		end
	end

end