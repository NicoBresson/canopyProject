class Ticker < ApplicationRecord
  belongs_to :company
  belongs_to :information_platform
end
