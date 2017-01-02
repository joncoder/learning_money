def generate_minimum_coins(cents)
	change = {}
	coins = {quarters: 25, dimes: 10, nickles: 5, pennies: 1}
	coins.each do |coin, value|	
		if cents >= value
			change[coin] = cents/value
			cents = cents%value
		end
	end
	change
end