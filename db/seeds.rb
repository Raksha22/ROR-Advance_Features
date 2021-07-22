Museum.destroy_all

scrape = Scraper.new
museums = scrape.scrape_city_urls
Museum.create_from_collection(museums)