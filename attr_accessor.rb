class Favorite

    attr_accessor :name

  class Band < Favorite

    attr_accessor :title
  end

  class Author < Favorite

    attr_accessor :work
  end

  def about_favorite
    return "My favorite band is #{@name}. Their best album is #{@title}.\n
    My favorite author is #{@name}. My favorite of his/her works is #{@work}."
  end


  favorite_band = Band.new
  favorite_band.name = "AFI"
  bandname = favorite_band.name

  favorite_band.title = "The All Hallows EP"
  albumtitle = favorite_band.title

  favorite_author = Author.new
  favorite_author.name = "Henry Rollins"
  authorname = favorite_author.name

  favorite_author.work = "Black Coffee Blues"
  booktitle = favorite_author.work

  puts favorite_band.about_favorite

end
