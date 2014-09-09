# https://www.codeeval.com/open_challenges/32/

module TrailingString
  def TrailingString.find_at_end(haystack, needle)
    h_count = haystack.length
    n_count = needle.length
    return 0 if n_count > h_count
    result = n_count > 0 ? 1 : 0
    while (h_count >= 0 && n_count >= 0)
      unless haystack[h_count] == needle[n_count]
        result = 0
        break
      end
      h_count -= 1
      n_count -= 1
    end
    result
  end
end
