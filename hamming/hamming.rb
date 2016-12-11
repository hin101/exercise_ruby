module BookKeeping
	VERSION = 3
end

class Hamming
  def self.compute(strand1='',strand2='')
    hamming = 0

    raise ArgumentError unless strand1.length == strand2.length
    
    for i in 0..strand1.length do
      hamming += 1 unless strand1[i] == strand2[i]
    end
    
    hamming
  end
end