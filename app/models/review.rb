class Review < ActiveRecord::Base
  validates :email, presence: true
  validates :created_at, presence: true
  validates :rating, presence: true
end
