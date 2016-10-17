class Course < ApplicationRecord
  belongs_to :block
  has_many :days
  has_many :rooms
  has_many :times
end
