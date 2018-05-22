require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists << artist
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
    new_hash = Hash.new(0)
    @@genres.each do |genre|
      new_hash[genre] += 1
    end
    new_hash
  end

  def self.artist_count
    new_hash = Hash.new(0)
    @@artists.each do |artist|
      new_hash[artist] += 1
    end
    new_hash
  end

end
