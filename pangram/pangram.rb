class Pangram
  def self.is_pangram?(str)
    ('a'..'z').all? { |w| str.downcase.include? (w) }
  end
end

module BookKeeping
  VERSION = 2
end