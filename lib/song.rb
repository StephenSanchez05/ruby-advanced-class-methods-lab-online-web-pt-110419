class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = Song.new
    song.save
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title 
    song
  end

  def Song.create_by_name(created)
    @all << created
    @all
  end
end
