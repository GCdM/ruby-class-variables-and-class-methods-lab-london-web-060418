class Song
  attr_reader :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@songs = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    @@songs << self
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    g_count = {}
    @@songs.each do |song|
      if g_count[song.genre]
        g_count[song.genre] += 1
      else
        g_count[song.genre] = 1
      end
    end
    g_count
  end
end