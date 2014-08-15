require_relative 'array_absurdity'

File.open(ARGV[0]).each_line do |line|
  values = line.split(';').last.split(',').map(&:to_i)
  puts ArrayAbsurdity.duplicate(values)
end
