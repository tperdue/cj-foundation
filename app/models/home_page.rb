class HomePage < ApplicationRecord
  has_one_attached :hero_image
  validates_uniqueness_of :identifier
  validates :hero_image, content_type: [
    'image/gif',
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/svg+xml',
    'image/webp'


  ]

  scope :active, -> { where(identifier: 'active').first }

end
