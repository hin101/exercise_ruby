# Convert a binary number string to decimal equivalent
class Binary
  def self.to_decimal(string)
    raise ArgumentError, 'Invalid binary string' unless /^[01]+$/ =~ string
    string.to_i(2)
  end
end

module BookKeeping
  VERSION = 3
end
