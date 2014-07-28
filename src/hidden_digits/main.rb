require_relative 'hidden_digits'

File.open(ARGV[0]).each_line do |line|
  puts HiddenDigits.find_digits(line)
end
