class Grains

  def self.square(num)
    raise ArgumentError unless num > 0 && num <= 64
    2 ** (num - 1)
  end

  def self.total
    (1..64).inject { |sum, n| sum + square(n) }
  end
end

module BookKeeping
  VERSION = 1
end