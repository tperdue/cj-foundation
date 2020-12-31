class AboutPage < ApplicationRecord
  has_one_attached :top_image
  validates_uniqueness_of :identifier
  validates :top_image, content_type: [
    'image/gif',
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/svg+xml',
    'image/webp'


  ]

  scope :active, -> { where(identifier: 'active')}
end
