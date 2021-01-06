
class Artist
  attr_accessor :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.collect {|this_artist_song| this_artist_song.genre}
  end

end
