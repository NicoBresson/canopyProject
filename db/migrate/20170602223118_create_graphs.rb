class CreateGraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :graphs do |t|
      t.references :query, foreign_key: true
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
