class Sector < ApplicationRecord
  belongs_to :industry
  has_many :business_segments
end
