puts "#################### Multi-line String Variables ####################"  

# http://commandercoriander.net/blog/2014/11/09/a-multiline-string-cheatsheet-for-ruby/

my_str = <<-FOO
This is the first line.
This is the second line.  0000000000000000000000
1 + 1 is #{1 + 1}.
FOO

puts my_str

my_str = %q(
This is the first line.
This is the second line. aaaaaaaaaaaaaaaaaaaaaa
1 + 1 is #{1 + 1}.
)

puts my_str

my_str = %Q(
This is the first line.
This is the second line. bbbbbbbbbbbbbbbbbbb 
1 + 1 is #{1 + 1}.
)

puts my_str

my_str = %(
This is the first line.
This is the second line. cccccccccccccccccc
1 + 1 is #{1 + 1}.
)

puts my_str