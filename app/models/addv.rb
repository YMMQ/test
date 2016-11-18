class Addv < ApplicationRecord
  belongs_to :organization
  mount_uploader :image, ImageUploader
def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("title LIKE ?", "%#{search}%")
end  

end
