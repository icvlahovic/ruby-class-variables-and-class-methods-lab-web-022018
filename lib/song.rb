class Song

  @@count = 0
  @@names = []
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
      @@names << name
    @artist = artist
      @@artists << artist
    @genre = genre
      @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_hash = {}
    @@genres.sort.each { |genre| genre_hash[genre] = @@genres.count(genre) }
    genre_hash
  end

  def self.artist_count
    artist_hash = {}
    @@artists.sort.each { |artist| artist_hash[artist] = @@artists.count(artist) }
    artist_hash
  end

end
