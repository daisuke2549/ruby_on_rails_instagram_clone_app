class Photo < ApplicationRecord
  belong_to:post
  
  validates :images,presence: true

  mount_uploader :image, ImageUploader
end
