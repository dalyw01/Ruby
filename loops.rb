puts "#################### Loops ####################"  

x = 0
while x <= 100

	if x % 5 == 0 and x % 3 == 0
		puts "#{x} is a fizzbuzz"
	elsif x % 5 == 0
		puts "#{x} is a buzz"
	elsif x % 3 == 0
		puts "#{x} is a fizz"
	else
		puts "#{x} is NONE"
	end
	# puts x
	x = x+1
end

# http://www.tutorialspoint.com/ruby/ruby_loops.htm
puts "x.times all needs to be on the one line"

4.times do 
	puts "nom nom 4" 
end

9.times do puts "nom nom 9" end

2.times {  
	puts "herpa derpppp 2"
 }

4.upto(7) { 
	puts "zzzz zzzz zzz" 
}

7.downto(4) { 
	puts "lolo lolo lol" 
}

0.step(15,5) { puts "HAHA HAHA HAHA" }
0.step(15,5) { |x| puts x }
