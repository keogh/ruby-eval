# https://www.codeeval.com/open_challenges/39/

module HappyNumbers
  def HappyNumbers.calculate(line)
    line = line.to_s
    res = 0
    previous = []
    while true do 
      digits = line.split('')
      result = 0
      digits.each do |x|
        result += x.to_i * x.to_i
      end
      if result == 1
        res = 1
        break
      end
      if previous.include?(result)
        break
      end
      previous.push result
      line = result.to_s
    end
    res
  end
end