require "nokogiri"
require "restclient" # gem instal rest-client if needed to manually
require "open-uri"

def scrapeLocalPage(x)
	doc = Nokogiri::HTML(open(x)) 
	puts doc   # => Nokogiri::HTML::Document
end


def scrapeOnlinePage(x)
	page = Nokogiri::HTML(open(x))   
	puts page.class   # => Nokogiri::HTML::Document
end


def scrapeOnlinePageRest(x)
	page = Nokogiri::HTML(RestClient.get(x))
	puts page.class   # => Nokogiri::HTML::Document

  	puts "\n\n- - - - - - - "
	puts page.css("title")[0].name   # => title
	puts "- - - - - - - "
	puts page.css("title")[0].text   # => My webpage
	puts "- - - - - - - "
	puts page.css("title").text   	 # => My webpage
	puts "- - - - - - - \n\n"	


	puts page.css('li')
	puts "- - - - - - - "
	puts page.css('li')[0].text # => YouTube
	puts "- - - - - - - "
	puts page.css('li')[1]      # => <li><a data-category="news" href="http://reddit.com">Reddit</a></li>
	puts "- - - - - - - "
	# puts page.css('li')[0]['href']
	# puts "- - - - - - - "
	# puts page.css("li[data-category='news']")
	# puts "- - - - - - - "
	# puts page.css('div#funstuff')[0]  # Prints a whole div
	# puts "- - - - - - - "
	# puts page.css('div#references a') # Print everything inside <a> tags in the references div
	# puts "- - - - - - - "
end

scrapeLocalPage("helper_files/file.html")

puts "- - - - - - - - - - - - - - - - - - - - - - - - - -"

scrapeOnlinePage("https://en.wikipedia.org/wiki/County_Cork")

puts "- - - - - - - - - - - - - - - - - - - - - - - - - -"

scrapeOnlinePageRest("http://ruby.bastardsbook.com/files/hello-webpage.html")










# set URL to point to where the page exists
page = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/County_Cork"))
links = page.css("a")
puts links.length   # => 6
puts links[0]   # => Click here
puts links[0]["href"] # => http://www.google.com









