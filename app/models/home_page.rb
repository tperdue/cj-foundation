class HomePage < ApplicationRecord
  validates_uniqueness_of :identifier

  scope :active, -> { where(identifier: 'active').first }

end
