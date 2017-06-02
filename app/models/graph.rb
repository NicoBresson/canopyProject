class Graph < ApplicationRecord
  belongs_to :query
  belongs_to :graph_category
end
