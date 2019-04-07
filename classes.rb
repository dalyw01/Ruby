puts "#################### Making A Class ####################"

class Car
    def initialize( new_color , new_make )
        @color = new_color
        @make  = new_make 
    end

    def getColor()
        return @color
    end

    def getMake()
        return @make
    end

    def setColor( new_color )
        @color = new_color
    end

    def setMake( new_make )
        @make = new_make
    end

    def getAllInfo()
        print "Its currently a #{@color} #{@make}"
    end
end   

wills_car = Car.new( "red" , "Volkswagen" )
puts "#{wills_car. getColor()}"
puts "#{wills_car. getMake() }"

puts "######### Now changing properties ####################"

wills_car.setColor("Yellow")
puts "#{wills_car. getColor()}"

puts "######### Now changing properties ####################"

wills_car.getAllInfo()
