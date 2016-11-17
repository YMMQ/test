class Addv < ApplicationRecord
  belongs_to :organization
  mount_uploader :image, ImageUploader

end
