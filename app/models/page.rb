class Page < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates_inclusion_of  :active, :in => [true, false]


end
