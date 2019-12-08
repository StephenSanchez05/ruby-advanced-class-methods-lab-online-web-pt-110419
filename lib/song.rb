class Song
  attr_accessor :name, :artist_name
  @@all = []

def initialize(name)
  @name = name
end

def Song.create
  song = Song.new
  Song.save
  song
end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
