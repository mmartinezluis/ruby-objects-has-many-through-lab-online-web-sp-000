
class Genre
  attr_accessor :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artists
    artist_array = [ ]
    Song.all.each do |song|
      if song.genre == self
        artist_array << song.artist
      end
    end
    artist_array
  end

end
