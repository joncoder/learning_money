require 'minitest/autorun'
require_relative 'coin_changer.rb'

class TestCoinChanger < Minitest::Test 

	def setup
		@coins = CoinChanger.new
	end

	def test_zero_cents_returns_zero_coins
		@coins.generate_minimum_coins(0)
		assert_equal({}, @coins.change)
	end

	def test_one_cent_returns_one_penny
		@coins.generate_minimum_coins(1)
		assert_equal({pennies: 1}, @coins.change)
	end

	def test_two_cents_returns_two_pennies
		@coins.generate_minimum_coins(2)
		assert_equal({pennies: 2}, @coins.change)
	end

	def test_five_cents_returns_one_nickle
		@coins.generate_minimum_coins(5)
		assert_equal({nickles: 1}, @coins.change)
	end

	def test_six_cents_returns_one_nickle_one_penny
		@coins.generate_minimum_coins(6)
		assert_equal({nickles: 1, pennies: 1}, @coins.change)
	end

	def test_ten_cents_returns_one_dime
		@coins.generate_minimum_coins(10)
		assert_equal({dimes: 1}, @coins.change)
	end

	def test_17_cents_returns_one_dime_one_nickle_two_pennies
		@coins.generate_minimum_coins(17)
		assert_equal({dimes: 1, nickles: 1, pennies: 2}, @coins.change)
	end

	def test_20_cents_returns_two_dimes
		@coins.generate_minimum_coins(20)
		assert_equal({dimes: 2}, @coins.change)
	end

	def test_92_cents_returns_3_quarters_1_dimes_1_nickle_2_pennies
		@coins.generate_minimum_coins(92)
		assert_equal({quarters: 3, dimes: 1, nickles: 1, pennies: 2}, @coins.change)
	end
end