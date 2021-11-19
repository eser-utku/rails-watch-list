class Movie < ApplicationRecord
  has_many :bookmarks

  validates_presence_of :title, :overview
  validates_uniqueness_of :title
  # validates :title, length: { minimum: 1 }
  # validates :overview, length: { minimum: 1 }
end
