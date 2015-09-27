require "YAML"
result = []
yaml   = YAML.load_file(ARGV[0])


result.push(yaml[0].keys.join("\t"))
yaml.each {|data| result.push(data.values.join("\t"))}
result.join("\n")


if ARGV[1].nil?
	print result
else
	File.open(ARGV[1], 'w') do |file|
	file.puts result
	end
end