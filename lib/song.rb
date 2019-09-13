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



  def self.new_by_name(name)
  song = Song.new 
  song.name = name
  song
  end 
  
  def self.create_by_name(name)
  song = self.create
  song.name = name
  song
  end 

  def self.find_by_name(search)
  @@all.detect do |songs|
    search == songs.name
   end
  end 
  
def self.find_or_create_by_name(search)
self.find_by_name(search) || self.create_by_name(search)
  end


def self.alphabetical
    self.all.sort_by{|s| s.name}
  end

def self.new_from_filename(song_string)
data = song_string.split("-")
data[0] = artist_name
data[1] = song_name 
end  
binding.pry  
 
end  
  