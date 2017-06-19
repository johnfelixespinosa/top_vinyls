class TopVinyls::Vinyls

  attr_accessor :position, :name, :artist, :year

  @@all = []

  def self.new_from_scraper(x)
    self.new(
      x.css(".listitem_data").css(".listitem_comment").css("p").text,
      x.css(".listitem_data").css("a").text
      )
  end

  def initialize(position=nil, name=nil)#, year=nil)
    @position = position
    @name = name
    #@year = year
    @@all << self
  end

  def self.all
    @@all
  end

end