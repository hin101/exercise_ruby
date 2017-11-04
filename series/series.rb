# series
class Series
  def initialize(digits)
    @digits = digits.chars.map(&:to_i)
  end

  def slices(count)
    raise ArgumentError if count > @digits.count
    @digits.each_cons(count).to_a.map { |d| d * '' }
  end
end
