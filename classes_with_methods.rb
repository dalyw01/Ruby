puts "#################### Classes With Methods ####################"

class Person

    def talk
      puts "Hello how are you? :D"
    end

    def burp
      puts "** BURPS **"
    end

    def addNumbers( a , b , c=25 )
      puts (a + b)
      puts "#{c}"
    end

end

person_1 = Person.new
person_1.talk
person_1.burp
person_1.addNumbers( 2 , 6 )