require 'minitest/autorun'
require_relative 'coin_changer.rb'

class TestCoinChanger < Minitest::Test 
	def test_zero_cents_returns_zero_coins
		assert_equal({}, generate_minimum_coins(0))
	end
end