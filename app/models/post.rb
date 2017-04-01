class Post < ApplicationRecord
	mount_uploader :image, ImageUploader
	validates :name, :image, presence: true
    belongs_to :user
    has_many :orders
end
