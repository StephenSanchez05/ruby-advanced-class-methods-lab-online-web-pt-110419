class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name)
    @name = name 
    save
  end
  
  def Song.create
    initialize
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
