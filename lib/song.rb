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
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new
    @@artists.sort.each do |artist|
      artist_key = artist
      artist_value = @@artists.count(artist)
      artist_hash[artist_key] = artist_value
    end
    artist_hash
  end

end
