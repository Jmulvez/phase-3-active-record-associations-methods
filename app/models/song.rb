class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  def get_genre_name
    self.genre.names.count
  end
  def drake_made_this
    self.songs.find_by_name("drake")
  end
end