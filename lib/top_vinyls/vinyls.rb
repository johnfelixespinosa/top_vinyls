class TopVinyls::Vinyls

  attr_accessor :name, :artist, :year

  @@all = []

  def self.new_from_scraper(x)
    self.new(
      x.css(".listitem_data").css("a").text
      )
  end

  def initialize(name=nil)#, year=nil)
    @name = name
    #@year = year
    @@all << self
  end

  def self.all
    @@all
  end

end