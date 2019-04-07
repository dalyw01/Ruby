puts "#################### Regular Expressions ####################"  

puts "#################### Replacing single string... ####################"  

puts "Replacing single string..."

puts "fat_Bucky_".sub( "fat" , "super_cute_")

puts "#################### Replacing every string ####################"  

puts "Replacing every string"

puts "fatBucky_fat".gsub( "fat" , "super_cute_")

puts "#################### Regular Expressions ####################"  

# Rip out the 1st 2 characters and replace them
message = "yo, what the hell do you want?"
puts message.sub( /^../ , "Excuse me sir?" )

puts "#################### Regular Expressions 2.0 ####################"  

ryan_string = "Ryan: This is a test"

if ryan_string =~ /(^.*)(:)(.*)/i
   puts $1
   puts $3
end