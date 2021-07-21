require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper
  def scrape_city_urls
    url = 'http://www.museumsusa.org/museums/?k=1271400%2cState%3aID%3bDirectoryID%3a200454'
    doc = Nokogiri::HTML(URI.open(url))

    cities = doc.css('#city').css('.browseCategoryItem')
  end
end

scrape = Scraper.new
scrape.scrape_city_urls