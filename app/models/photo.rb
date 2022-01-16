class Photo < ApplicationRecord
  belong_to:post
  
  validates :images,presence: true
end
