class Company < ApplicationRecord
  has_many :facts
  has_many :tickers
  has_many :business_segments
  has_many :market_areas
  has_many :acquisitions
end
