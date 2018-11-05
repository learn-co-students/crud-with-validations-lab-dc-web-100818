class Song < ActiveRecord::Base
  
  # Title must not be blank
  # Title cannot be repeated by the same artist in the same year
  validates :title, presence: true, uniqueness: { scope: [:artist_name, :release_year] }

  # Released must be true or false
  validates :released, inclusion: { in: [true, false] }
  
  # Release_Year Must not be blank if released is true
  # Release_Year must be less than or equal to the current year
  validates :release_year, presence: true, numericality: {less_than_or_equal_to: Date.today.year }, if: :released

  # Artist_Name Must not be blank
  validates :artist_name, presence: true
  
  


end
