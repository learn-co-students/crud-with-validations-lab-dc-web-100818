class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: {in: [true, false]}
  validates :artist_name, presence: true
  #custom validate :release_year


end
