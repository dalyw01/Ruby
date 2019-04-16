puts "\n\n\n#################### Regular Expressions 1 ####################\n\n"  

a = "William Daly : This is a test12356 £'';s;dsd;sd索简;!@£$%^&*(()"

puts a

puts "\n\nWe want everything either side of the ':' apart from spaces\n\n"

if a =~ /
		(.*)\s+ # Any single character multiple times without the space
	    (:)    	# We want any ":""
	    \s+(.*)	# Remove any spaces, then any single character multiple times
	    /x     	# This x allows at the end of regex allows us to put spaces and comments in the regex     
   puts $1
   # puts $2   Notice we have captured the ":"" in $2 but don't necessarily have to use it
   puts $3
end

puts "\n\n\n#################### Regular Expressions 2 ####################\n\n"  

b = "仅限搜索简体中文Intel结果英特尔Intelligence英特因特尔Intel 文 Intel"

puts b

puts "\n\nWe just want to see if the word 'Intel' exists in this string\n\n"

if b =~ /
		[^a-zA-Z0-9](Intel)[^a-zA-Z0-9] # If there's any character e.g Chinese or Japanese characters
		|								# OR
		(Intel)\z  						# If Intel is at the end of string
		/x
	puts "Yes it does! - #{$1}"
end

puts "\nNow we want to store every instance of the word 'Intel'\n\n"

b_array = []

b.scan /[^a-zA-Z0-9](Intel)[^a-zA-Z0-9]|(Intel)\z/ do |i|
	b_array.push(i.compact)  # So now just "Intel" because .compact removed nil -> ["Intel", nil]
end

b_array.each do | item |
	puts "> - - - - - - - - #{item}"
end

puts "\n\n#################### Regular Expressions 3 ####################\n\n"  

c = "
CACHE HITS / WR / REQ / IO ------- : 0 / 0 / 0 / 19745745 RECENT//ALL STATIS-TIME / IO/SEC -- 
: 0:07:13 0+ // 23:39:15 231 RECENT//ALL RATIOS HITS/WRITES --- : 0.00 / 0.00 // 0.00 / 0.00 ** ED- 1b **
"

puts "\nI want to capture the value '0+'' before the port ED- 1b\n\n"

puts c

if  c =~ /SEC\s+--+\s+\S+\s+\S+\s+(\S).*\s+.*ED-\s+1b/
	puts "\n\n#{$1}\n\n"
end

puts "\n\n#################### Regular Expressions 4 ####################\n\n"  

puts "\nI want the first value for pool, which should be '001'\n\n"

d = 
"
POOL STAT E CNT SRP SLE TECH   PROT   POOL_NAME FLG DG USED PACK USSL 
001  AVAL C 6   1   2ms EFD    R5/3+1 DG1_CKD_F ... 1  0%   --   100% TDATS: FFFEA-FFFEF 002 AVAL F 1A 1 2ms EFD R5/3+1 DG1_FBA_F ... 1 1%
"

puts "\n\n#{d}\n\n"

if d =~ /USSL\s+([0-9a-fA-F]{3})/
	puts $1
end


puts "\n\n\n#################### Regular Expressions 5 ####################"  

puts "\nI want the dates and log names e.g 'Dec 16 11:09 85983_0000.log'\n\n"

e = 
"
-rw-r--r-- 1 root root 7999 Dec 11 11:19 91983_0001.log
-rw-r--r-- 1 root root 6866 Dec 12 11:25 91983_0002.log
-rw-r--r-- 1 root root 6866 Dec 13 13:51 91983_0003.log
-rw-r--r-- 1 root root 10762 Dec 14 14:11 91983_0004.log
-rw-r--r-- 1 root root 9685 Dec 15 14:23 85983_0005.log
-rw-r--r-- 1 root root 12106 Dec 16 14:32 91983_0006.log
-rw-r--r-- 1 root root 14792 Dec 16 14:52 85983_0007.log
-rw-r--r-- 1 root root 12224 Dec 16 15:00 85983_0008.log
-rw-r--r-- 1 root root 7527 Dec 16 15:07 85983_0009.log
-rw-r--r-- 1 root root 8095 Dec 16 15:13 85983_0010.log
"

if e =~ /\d{2}\s+(.*.log)/
	puts "#{$1}\n\n"
end

if e.scan(/\d{2}\s+(.*.log)/).last
	puts "#{$1}\n\n"
end

y = e.scan(/\d{2}\s+(.*.log)/)

y.each do | entry |
  puts "#{entry} < - - - - - - - -"
end

puts "\n\n"