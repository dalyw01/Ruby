# JSON Parsing example

require "json"

string = '{"desc":{"someKey":"someValueToSomeKey","anotherKey":"value"},"main_item":{"stats":{"a":8,"b":12,"c":10}}}'
parsed_string = JSON.parse(string) # returns a hash

puts parsed_string ["desc"]["someKey"]
puts parsed_string ["main_item"]["stats"]["a"]

# Read JSON from a file, iterate over objects

file = open("helper_files/shops.json")
json = file.read

parsed = JSON.parse(json)

parsed.each do |x,y|
	puts "#{x} - - - - - - - - - - -> #{y}"
 		y.each do |a,b|
		puts "#{a} - - - - - - - - - - -> #{b}"
 	end
end