class AddDatabaseCriteriaToGraphs < ActiveRecord::Migration[5.0]
  def change
    add_column :graphs, :database_criteria, :json
  end
end
