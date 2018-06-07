class Song
  attr_accessor 
  attr_reader :name, :artist
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
end