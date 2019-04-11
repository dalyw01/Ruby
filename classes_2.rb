puts "#################### Making A Class 2 ####################"

class Animal
    attr_accessor :name, :age, :trait
end

animal_1      = Animal.new
animal_1.name = "Alan"
animal_1.age  = 20

puts "#{animal_1.name}"
puts "#{animal_1.age}"

puts "#################### Inheritance ####################"

class Dog < Animal
    # Inhereting
end

class Cat < Animal
    # Inhereting
end

class Fish < Animal
    attr_accessor :fins  # Adding new attribute
end

fish_1 = Fish.new

fish_1.name  = "Alan"
fish_1.age   = 20
fish_1.trait = "Dodgey leg"
fish_1.fins  = "yes he has fins" 

puts "#{fish_1.fins}"