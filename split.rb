# Split this string on a space.
input = "one two three"
values = input.split(" ")

# Display each value to the console.
values.each do |value|
    puts value
end

puts "##########################################################"

# We do not specify an argument: space is implicit.
input = "a b c"

values = input.split()
puts values

puts "##########################################################"

# Contains five vegetable names.
value = "carrot,squash,corn,broccoli,spinach"

# Split with limit of 3.
vegetables = value.split(",", 3)
puts vegetables

puts "##########################################################"

# Split on a comma.
value = "cat,,dog,bird"
elements = value.split(",")
print elements, "\n"

# Remove empty elements from the array.
elements.delete_if{|e| e.length == 0}
print elements

puts "##########################################################"

value = "xyz 1"

# Separate chars.
array = value.split ""

# Write length.
puts array.length

# Write elements.
print array

puts "##########################################################"

# Open this file (change file name for your program).
IO.foreach("csv.txt") do |line|

    # Remove trailing whitespace.
    line.chomp!

    # Split on comma.
    values = line.split(",")

    # Write results.
    print values.join("+") << "... " << String(values.length) << "\n"

end

puts "##########################################################"

line = "100,200,300"

# Split on the comma char.
values = line.split(",")

# Parse each number in the result array.
values.each do |v|
    number = Integer(v)

    # Display number if it is greater than or equal to 200.
    if number >= 200
        puts number
    end
end