require_relative 'without_repetitions'

File.open(ARGV[0]).each_line do |line|
  line.strip!
  next if line.empty?
  puts WithoutRepetitions.clean_repetitions(line)
end