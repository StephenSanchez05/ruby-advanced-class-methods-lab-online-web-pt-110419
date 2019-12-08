require 'pry'

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

  def self.create_by_name(created)
    song = self.create
    song.name = created
    song
  end
  
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(search)
    if @all.include?(search)
      song 
    else 
  
end
