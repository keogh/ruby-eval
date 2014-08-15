require_relative 'shortest_repetition'

File.open(ARGV[0]).each_line do |line|
  line.strip!
  puts ShortestRepetition.calculate(line)
end
