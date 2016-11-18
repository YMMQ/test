class Job < ApplicationRecord
  belongs_to :addv
  belongs_to :profession
  belongs_to :degree
  belongs_to :city

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("title LIKE ?", "%#{search}%")
end
end
