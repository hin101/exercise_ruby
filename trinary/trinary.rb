class Trinary
  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def to_decimal
    num.to_i(3)
  end
end
