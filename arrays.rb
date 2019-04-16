puts "#################### Arrays ####################"

array1 = [ "derp" , 6 , 1.0 , nil ]

puts array1
puts array1[1]

puts "#################### Arrays 2.0 ####################"

array1.each do | number |
  puts "This is me printing the Ruby way: #{number}"
end

puts "#################### Arrays Push/Pop ####################"

a = [ "a", "b", "c" ]
a.push("d", "e", "f")
puts a

puts "Now for some pop..."

b = [ "a", "b", "c", "d" ]
b.pop()
puts b

puts "Now to pop multiple items..."

b = [ "a", "b", "c", "d" ]
b.pop(2)
puts b

puts "The length of array a is [#{a.length}]" 
puts "The length of array b is [#{b.length}]" 