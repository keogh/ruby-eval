# https://www.codeeval.com/open_challenges/107/

module ShortestRepetition
  def ShortestRepetition.calculate(line)
    period, i, j = [1, 1, 0]
    while (i < line.length)
      if (line[i] == line[j])
        j += 1
      else
        j = 0
        period += 1
      end
      i += 1
    end
    period
  end
end
