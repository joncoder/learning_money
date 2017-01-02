def generate_minimum_coins(cents)
	coins = {}
	if cents >= 5
		coins[:nickles] = 1
		cents -= 5
	end
	if cents > 0
		coins[:pennies] = cents
	end
	coins
end