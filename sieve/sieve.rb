class Sieve
	require 'prime'

	def initialize(num)
		@number = num
	end

	def primes
		primes = Prime::EratosthenesGenerator.new.take_while {|i| i <= @number}
	end
end

module BookKeeping
  VERSION = 1
end