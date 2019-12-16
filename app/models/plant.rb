class Plant < ApplicationRecord
  belongs_to :garden

  validates :name, presence: true, uniqueness: { scope: :garden_id }
  validates :image_url, presence: true, format: { with: %r{\.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.(sorry for unsplash)'}
end
