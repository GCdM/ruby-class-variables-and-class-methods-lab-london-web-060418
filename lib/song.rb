class Song
  attr_accessor 
  attr_reader :name
  
  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
  end
end