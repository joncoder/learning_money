def generate_minimum_coins(cents)
	change = {}
	coins = {dimes: 10, nickles: 5, pennies: 1}
	if cents >= coins[:dimes]
		change[:dimes] = cents/coins[:dimes]
		cents = cents%coins[:dimes]
	end
	if cents >= coins[:nickles]
		change[:nickles] = 1
		cents -= coins[:nickles]
	end
	if cents >= coins[:pennies]
		change[:pennies] = cents
	end
	change
end