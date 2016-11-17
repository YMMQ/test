class Job < ApplicationRecord
  belongs_to :addv
  belongs_to :profession
  belongs_to :degree
  belongs_to :city
end
