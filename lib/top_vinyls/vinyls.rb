class TopVinyls::Vinyls

  attr_accessor :name, :artist, :year

  @@all = []

  def self.new_from_scraper(x)
    self.new(
      x.css("h3 a").text
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

  def self.print
    puts ""
    puts "---------- Current List ----------"
    puts ""
    TopVinyls::Vinyls.all.each.with_index(1) do |vinyls, i|
      puts "#{i}. #{vinyls.name}"
      puts ""
    end
  end

end