def generate_minimum_coins(cents)
	coins = {}
	if cents > 0
		coins[:pennies] = 1
	end
	coins
end