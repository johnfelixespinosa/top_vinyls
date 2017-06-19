class TopVinyls::Vinyls

  attr_accessor :position, :name, :url, :artist, :year

  @@all = []

  def initialize(position=nil, name=nil, url=nil)#, year=nil)
    @position = position
    @name = name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def list_position
    @list = []
    @@all.collect do |album|
      @list << album[:position]
    end
    list
  end

end