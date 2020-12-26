class SiteInfo < ApplicationRecord
  validates_uniqueness_of :identifier
  scope :active, -> { where(identifier: 'active')}


end
