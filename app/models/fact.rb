class Fact < ApplicationRecord
  belongs_to :company
  belongs_to :indicator
  belongs_to :period
  belongs_to :source
end
