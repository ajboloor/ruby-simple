require 'nokogiri'   
require 'open-uri'

def web_scraper(page_url, partial_html)
  page = Nokogiri::HTML(open(page_url))

  for posts in page.css(partial_html) do
     puts posts.text
  end 
end

url = "https://old.reddit.com"
scrap_html = 'p[class="title"]'
web_scraper(url, scrap_html)
