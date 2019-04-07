puts "\n#################### Cycling Through Ruby Arrays And Hashs ####################\n"

a = [1,2,3]

puts a

a.each do |item|
	puts "#{item}"
end

puts "================================================================\n"

shop = 
{
	"food" => "cheese"
}

puts shop

shop.each do |k,v| 
	puts "#{k} -----> #{v}"
end

puts "================================================================\n"

hash = 	{
			'qwe' => ['JAHAHAHAH'],
			'rty' => 
				{
					'foo' 	=> 'this', 
					'cool' 	=> 'guy'
				}
		}

hash.each do |k,v|
	puts k
	puts v
	puts "xxxxxxxxxxxxxxx"
	v.each do |x,a|
		puts "[#{x}] has a key of [#{a}]"
	end
	puts "xxxxxxxxxxxxxxx"
end

puts "================================================================\n"

more_nested_array = [["hello", ["world", "new york"]], ["love", "ruby"]]

more_nested_array.each do |element|
  element.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer_element|
        puts third_layer_element
      end
    end
  end
end

puts "================================================================\n"

holiday_supplies = {
  "winter" => { 
    "Christmas" => ["lights", "tree"],
    "New Years" => "champagne glasses"
  },
  "summer" => {
    "July Fourth" => ["BBQ", "flags"]
  },
  "spring" => {
    "Memorial Day" => "BBQX"
  },
  "fall" => {
    "Labor Day" => "hot dogs"
  }
}

puts holiday_supplies
 
holiday_supplies.each do |key, value|
  value.each do |key2, value2|
    puts value2
  end
end