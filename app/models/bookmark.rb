class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validates :comment, presence: true
  # validates :comment, length: { minimum: 6 }
  validates_presence_of :movie, :list, :comment
  validates_length_of :comment, minimum: 6
  validates :movie, uniqueness: { scope: :list }
end
