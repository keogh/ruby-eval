# https://www.codeeval.com/open_challenges/173/

module WithoutRepetitions
  def WithoutRepetitions.clean_repetitions(line)
    chars = line.split('')
    i = 0
    while i < chars.length do
      if chars[i] == chars[i+1]
        chars.delete_at(i+1)
        next
      end
      i += 1
    end
    chars.join
  end
end