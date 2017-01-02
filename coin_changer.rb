def generate_minimum_coins(cents)
	coins = {}
	if cents > 0
		coins[:pennies] = cents
	end
	coins
end