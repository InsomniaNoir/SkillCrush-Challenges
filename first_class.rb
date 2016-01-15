class Favorite

  def name=(name)
    @name = name
  end

  def get_name
    return @name
  end

class Band < Favorite

  def favorite_album=(album)
    @album = album
  end

  def get_favorite_album=(album)
    return @album
  end

  def favorite_lyric=(lyric)
    @lyric = lyric
  end
end

class Author < Favorite

  def work=(worke)
    @quote = work
  end

  def get_work
    return @work
  end
end

class Poet < Favorite

  def favorite_poem=(poem)
    @poem = poem
  end

  def get_favorite_poem
    return @poem
  end
end

  def about_favorite
    return "My favorite band is #{@name}. Their best album is #{@title}. My favorite song on #{@title} is #{@track} because of the line, '#{@line}'"
  end
end

favorite_band = Band.new
favorite_band.band_name = "AFI"
favorite_band.album_title = "The All Hallows EP"
favorite_band.favorite_song = "The Boy Who Destroyed the World"
favorite_band.best_lyric = "Will you wrap your arms around me as I'm falling?"

puts favorite_band.about_band
