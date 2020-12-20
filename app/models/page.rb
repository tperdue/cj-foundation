class Page < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :active, in: [true, false]

    has_many :text_contents, dependent: :destroy
    has_many :image_contents, dependent: :destroy
end
