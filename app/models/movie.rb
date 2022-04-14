class Movie < ApplicationRecord
  # validates :title,  presence: true, uniqueness: true
  # validates :overview,  presence: true, uniqueness: true
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
  has_many :bookmarks
end
