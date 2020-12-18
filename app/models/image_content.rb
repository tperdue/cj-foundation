class ImageContent < ApplicationRecord
    validates :title, presence :true, uniqueness: true

    belongs_to :page
end
