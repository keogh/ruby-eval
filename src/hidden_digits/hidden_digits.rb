module HiddenDigits
  @@chars = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j']

  def HiddenDigits.find_digits(line)
    res = []
    line.each_char do |x|
      if @@chars.include?(x)
        res.push @@chars.index(x)
      else
        x = Integer(x) rescue nil
        next if x.nil?
        next if x < 0 || x > 9
        res.push x
      end
    end
    return 'NONE' if res.length == 0
    res.join('')
  end
end
