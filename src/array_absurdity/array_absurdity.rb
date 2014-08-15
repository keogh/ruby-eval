module ArrayAbsurdity
  def ArrayAbsurdity.duplicate(values)
    hash = Hash.new(0)
    values.each do |v|
      hash[v] += 1
      return v if hash[v] > 1
    end
  end
end
