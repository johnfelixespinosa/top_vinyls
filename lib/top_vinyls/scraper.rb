class TopVinyls::Scraper
  #require 'pry'

  def get_page
    Nokogiri::HTML(open("https://www.discogs.com/lists/The-100-Greatest-Vinyl-Records-of-All-Time/271480"))
  end

  def scrape_list
    self.get_page.css("ol#listitems li")
  end 

  def make_list
    scrape_list.each do |x|
      TopVinyls::Vinyls.new_from_scraper(x)
    end
  end

end