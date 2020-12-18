class Page < ApplicationRecord
    validates :title, presence :true, uniqueness: true
    validate :active, in [true, false]

    has_many :text_contents
    has_many :image_contents
end
