class Robot

	def name
		@name  ||= generate_name
	end

	def reset
		@name = nil
	end

	private

	def generate_name
		letter = [*('A'..'Z')].sample(2).join
		number = rand.to_s[2..4]
		letter + number
	end
end

module BookKeeping
	VERSION=2
end