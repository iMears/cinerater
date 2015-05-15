class Review < ActiveRecord::Base
  validates :email, presence: true
  validates :rating, presence: true
  validates :movie_title, presence: true
end
