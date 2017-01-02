class Tests

	attr_accessor :tests, :passes, :fails, :failing_tests

	def initialize()
		@tests = 0
		@passes = 0
		@fails = 0
		@failing_tests = []
	end

	def assert_equal(expected, actual, test)
		@tests += 1
		if expected == actual
			@passes += 1
		else
			@fails += 1
			@failing_tests << {test: test, expected: expected, actual: actual}
		end
	end

	def print_results()
		puts "#{tests} tests; #{passes} passes; #{fails} fails"

		failing_tests.each do |failing_test|
			puts "\e[31m#{failing_test[:test]}: expected #{failing_test[:expected]}, actual #{failing_test[:actual]}\e[0m"
		end
	end

end

tests = Tests.new

tests.assert_equal(1, 1, "test one equals one")
tests.assert_equal(2, 1+1, "test one plus one equals two")
tests.assert_equal(3, 1+1, "test one plus one equals three")

tests.print_results()

