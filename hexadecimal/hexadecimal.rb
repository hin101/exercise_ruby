class Hexadecimal
  attr_accessor :hex

  def initialize(hex)
    @hex ||= hex
  end

  def to_decimal
    hex =~ /^[0-9A-F]+$/i ? hex.to_i(16) : 0
  end
end
