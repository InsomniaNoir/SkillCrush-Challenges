class Band
  attr_accessor :band_name, :album_title, :favorite_song, :best_lyric

  def about_band
    return "My favorite band is #{name}. Their best album is #{album}. My favorite track on the album is #{song}, especially because of the lyrics, #{lyric}"
  end
end

favorite_band = Band.new
favorite_band.band_name = "Bad Religion"
name = favorite_band.band_name

favorite_band.album_title = "No Substance"
album = favorite_band.album_title

favorite_band.favorite_song = "'All Fantastic Images'"
song = favorite_band.favorite_song

favorite_band.best_lyric = "I don't have a thing against fantasy.\nBut to chase after it just don't make sense to me.\nIf your only hope is simply peace and love\nYou end up discarding most of what you're made of."
lyric = favorite_band.best_lyric

puts favorite_band.about_band
