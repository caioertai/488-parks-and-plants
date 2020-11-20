class Plant < ApplicationRecord
  belongs_to :garden

  has_many :taggings
  has_many :tags, through: :taggings

  validates :name, :image_url, presence: true
end
