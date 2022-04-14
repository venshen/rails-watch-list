class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: {minimum:6}
  # validates :movie, presence: true, uniqueness: true
  # validates :list, presence: true, uniqueness: true
  validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
  # validates :movie_id, uniqueness: { scope: :list_id, message: "is already in the list" }
end
