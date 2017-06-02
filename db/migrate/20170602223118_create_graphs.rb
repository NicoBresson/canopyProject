class CreateGraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :graphs do |t|
      t.references :query, foreign_key: true
      t.references :graph_category, foreign_key: true
      t.string :dataset
      t.string :stats

      t.timestamps
    end
  end
end
