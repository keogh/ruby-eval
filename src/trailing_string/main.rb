require_relative 'trailing_string'

File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  values = line.split(',')
  puts TrailingString.find_at_end(*values)
end
