module BookKeeping
  VERSION=1
end

class Prime 
	require "prime"

	def self.nth(num)
    raise ArgumentError if num == 0
		Prime.take(num).last
	end
end