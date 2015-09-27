require 'yaml'
result = []
lines  = File.open(ARGV[0], 'r').read.split("\n")
keys   = lines[0].split("\t")
lines.shift
lines.each { |line| result.push(keys.zip(line.split("\t")).to_h) }

# lines.each do |line|
# 	values = line.split("\t")
# 	dict = {}
# 	keys.zip(values).each { |k,v| dict[k]=v }
# 	result.push(dict)
# end

if ARGV[1].nil?
	print result.to_yaml
else
	File.open(ARGV[1], 'w') do |file|
	file.puts result.to_yaml
	end
end