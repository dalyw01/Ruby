puts "\n#################### Hashes In Ruby ####################"
puts "##########################################################"

student_ages =
{
    "Jack" => 10,
    "Jill" => 12,
    "Bobb" => 14
}

puts "\n#{student_ages}"

student_ages.each do |x,y|
 puts "#{x} - - - - - - - - - - -> #{y}"
end

puts "\n#################### Putting KEYS into an array and outputting them! ####################"
puts "#########################################################################################"

name_array = student_ages.keys
puts name_array


puts "\n#################### Outputting VALUES without putting them into an array! ####################"
puts "###############################################################################################"

weird_hash = { "a"=>["1", "2", "3"], "b"=>["10", "11"] }
puts weird_hash.values



puts "\nEditing just the VALUES of hash wii!"
puts "##########################################"

wii = 
{
	"a" => "xxxx", 
	"c" => "yyyyyyyy"
}

wii.each{ |key,value| value.upcase! } # now contains {"a" => "X", "c" => "Y"}.
puts wii

puts "\n#################### Passing Hash's Into Functions ####################"

def printHashs( new_hash_1 , new_hash_2 )
  puts new_hash_1.values
  puts "+-------+"
  puts new_hash_2.values
end

printHashs( student_ages , weird_hash )