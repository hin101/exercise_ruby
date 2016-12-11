class Squares
	def initialize(number)
		@number = number
	end

	def square_of_sum()
		square_of_sum ||= 0

		(1..@number).each do |i|
			square_of_sum += i
		end

		square_of_sum = square_of_sum**2
	end

	def sum_of_squares()
		sum_of_squares ||= 0
		(1..@number).each do |i|
			sum_of_squares += i**2
		end

		sum_of_squares
	end

	def difference()
		difference = square_of_sum() - sum_of_squares()
	end
end

module BookKeeping
	VERSION = 3
end