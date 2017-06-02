class CreateGraphCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :graph_categories do |t|
      t.string :category_name
      t.text :description
      t.string :data_base_criteria

      t.timestamps
    end
  end
end
