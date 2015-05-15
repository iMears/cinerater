class Review < ActiveRecord::Base
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
  validates :movie_title, presence: true
end
