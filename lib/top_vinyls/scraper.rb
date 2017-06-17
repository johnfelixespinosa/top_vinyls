class TopVinyls::Scraper
  #require 'pry'

  def get_page(input)
    if input == 1
      Nokogiri::HTML(open("https://www.discogs.com/lists/The-100-Greatest-Vinyl-Records-of-All-Time/271480"))
    elsif input == 2
      Nokogiri::HTML(open("https://www.discogs.com/lists/The-100-Greatest-Vinyl-Records-of-All-Time/271480?page=2"))
    elsif input == 3
      Nokogiri::HTML(open("https://www.discogs.com/lists/The-100-Greatest-Vinyl-Records-of-All-Time/271480?page=3"))
    elsif input == 4
      Nokogiri::HTML(open("https://www.discogs.com/lists/The-100-Greatest-Vinyl-Records-of-All-Time/271480?page=4"))
    end
  end

  def scrape_list(input)
    self.get_page(input).css("ol#listitems li")
  end 

  def make_list(input)
    scrape_list(input).each do |x|
      TopVinyls::Vinyls.new_from_scraper(x)
    end
  end

end

#?page=2
#?page=3
#?page=4