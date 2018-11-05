class Song < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :released, inclusion: { in: [true, false]}
  validates :release_year, numericality: { less_than_or_equal_to: DateTime.now.year }, if: :released?
  validates :artist_name, presence: true
  validate :string?

  def released?
    released == true
  end

  def string?
    genre.class == String
  end

end
