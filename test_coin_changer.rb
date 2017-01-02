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
end