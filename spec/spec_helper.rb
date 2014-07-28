Dir[File.dirname(__FILE__) + '/../src/**/*.rb'].each do |file|
  next if /main.rb$/.match(file)
  require file
end
