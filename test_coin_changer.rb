require 'minitest/autorun'
require_relative 'coin_changer.rb'

class TestCoinChanger < Minitest::Test 
	def test_zero_cents_returns_zero_coins
		assert_equal({}, generate_minimum_coins(0))
	end

	def test_one_cent_returns_one_penny
		assert_equal({pennies: 1}, generate_minimum_coins(1))
	end

	def test_two_cents_returns_two_pennies
		assert_equal({pennies: 2}, generate_minimum_coins(2))
	end

	def test_five_cents_returns_one_nickle
		assert_equal({nickles: 1}, generate_minimum_coins(5))
	end

	def test_six_cents_returns_one_nickle_one_penny
		assert_equal({nickles: 1, pennies: 1}, generate_minimum_coins(6))
	end

	def test_ten_cents_returns_one_dime
		assert_equal({dimes: 1}, generate_minimum_coins(10))
	end

	def test_17_cents_returns_one_dime_one_nickle_two_pennies
		assert_equal({dimes: 1, nickles: 1, pennies: 2}, generate_minimum_coins(17))
	end

	def test_20_cents_returns_two_dimes
		assert_equal({dimes: 2}, generate_minimum_coins(20))
	end

	def test_92_cents_returns_3_quarters_1_dimes_1_nickle_2_pennies
		assert_equal({quarters: 3, dimes: 1, nickles: 1, pennies: 2}, generate_minimum_coins(92))
	end
end