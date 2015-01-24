require_relative 'happy_numbers'

File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  puts HappyNumbers.calculate(line)
end
