require 'nokogiri'   
require 'open-uri'

page_url = "https://old.reddit.com"
page = Nokogiri::HTML(open(page_url))

for posts in page.css('p[class="title"]') do
   puts posts.text
end 
