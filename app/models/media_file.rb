class MediaFile < ApplicationRecord
  has_one_attached :file
  validates_presence_of :name
  validates_presence_of :file_type
  validates_uniqueness_of :name
  validates_inclusion_of :file_type, :in => ['document', 'image', 'video', 'audio']
  validates :file, content_type:[
    'application/msword',
    'application/pdf',
    'audio/mpeg',
    'audio/webm',
    'audio/wav',
    'audio/ogg',
    'image/gif',
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/svg+xml',
    'image/webp',
    'video/mpeg',
    'video/ogg',
    'video/webm',

  ]
  MEDIA_TYPES = ['document', 'image', 'video', 'audio']
end
