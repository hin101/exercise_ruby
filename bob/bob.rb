class Bob
  def self.hey(saying)
    if silent?(saying)
      return 'Fine. Be that way!'
    elsif shouting?(saying)
      return 'Whoa, chill out!'
    elsif question?(saying)
      return 'Sure.'
    end
    'Whatever.'
  end

  def self.silent?(s)
    s.nil? || s.strip.empty?
  end

  def self.question?(s)
    s.end_with?('?')
  end

  def self.shouting?(s)
    s.upcase.eql?(s)
  end
end
