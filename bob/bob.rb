class Bob
  def self.hey(remark)
    return 'Fine. Be that way!' if remark.strip.empty?

    up_cased_word_count = remark[1..-1].scan(/([A-Z]+[ \?\'\!\.]?)/).count
    down_cased_word_count = remark[1..-1].scan(/([a-z]+[ \?\'\!\.]?)/).count
    return 'Whoa, chill out!' if up_cased_word_count > down_cased_word_count
    return 'Sure.' if remark[-1] == '?'

    'Whatever.'
  end
end
