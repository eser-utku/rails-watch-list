class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  validates_presence_of :name
  validates_uniqueness_of :name
  # validates :name, length: { minimum: 1 }
end
