class AboutPage < ApplicationRecord
  has_one_attached :top_image
  has_one_attached :scholar1_image
  has_one_attached :scholar2_image
  has_one_attached :scholar3_image
  validates_uniqueness_of :identifier
  validates :top_image, :scholar1_image, :scholar2_image, :scholar3_image, content_type: [
    'image/gif',
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/svg+xml',
    'image/webp'


  ]

  scope :active, -> { where(identifier: 'active')}
end
