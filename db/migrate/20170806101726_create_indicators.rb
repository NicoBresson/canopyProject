class CreateIndicators < ActiveRecord::Migration[5.0]
  def change
    create_table :indicators do |t|
      t.string :name
      t.string :definition

      t.timestamps
    end
  end
end
