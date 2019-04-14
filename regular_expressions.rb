puts "\n\n\n#################### Regular Expressions 1 ####################"  

puts "Rip out the 1st 2 characters and replace them"

message = "yo, what the hell do you want?"

puts message

puts "Goes to..."

puts message.sub( /^../ , "Excuse me sir?" )

puts "\n\n\n#################### Regular Expressions 2 ####################"  

ryan_string = "Ryan : This is a test12356 £"

puts ryan_string

if ryan_string =~ /(^.*)(:)(.*)/i
   puts $1
   puts $3
end

puts "\n\n\n#################### Regular Expressions 3 ####################"  

puts 'We just want the string = "intel"...'

a = "仅限搜索简体中文intel结果英特尔intelligence英特\n\t因特尔intel 文 intel"

puts a

if a =~ /(intel)[^a-zA-Z0-9]|(intel)\Z/i
	puts $1
end

puts "\n\n\n#################### Regular Expressions 4 ####################"  

puts 'I want to capture the value "0+" before the port ED- 1b'

b = "
CACHE HITS / WR / REQ / IO ------- : 0 / 0 / 0 / 19745745 RECENT//ALL STATIS-TIME / IO/SEC -- 
: 0:07:13 0+ // 23:39:15 231 RECENT//ALL RATIOS HITS/WRITES --- : 0.00 / 0.00 // 0.00 / 0.00 ** ED- 1b **
"

puts b

if b =~ /SEC\s+--+\s+\S+\s+\S+\s+(\S).*\s+.*ED-\s+1b/
	puts $1
end

puts "\n\n\n#################### Regular Expressions 5 ####################"  

puts 'I want the first value for pool, which should be "001"'

c = 
"
POOL STAT E CNT SRP SLE TECH   PROT   POOL_NAME FLG DG USED PACK USSL 
001  AVAL C 6   1   2ms EFD    R5/3+1 DG1_CKD_F ... 1  0%   --   100% TDATS: FFFEA-FFFEF 002 AVAL F 1A 1 2ms EFD R5/3+1 DG1_FBA_F ... 1 1%
"

puts c

if c =~ /USSL\s+([0-9a-fA-F]{3})/
	puts $1
end


puts "\n\n\n#################### Regular Expressions 6 ####################"  

puts 'I want the dates and log names e.g "Dec 16 11:09 85983_0000.log"'

d = 
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

if d =~ /\d{2}\s+(.*.log)/
	puts $1
end

puts "- - - - - - - - - - - - - - "

if d.match(/\d{2}\s+(.*.log)/)
	puts $1
end

puts "- - - - - - - - - - - - - - "

y = d.scan(/\d{2}\s+(.*.log)/i)
puts y