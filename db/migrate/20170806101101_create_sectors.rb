class CreateSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sectors do |t|
      t.string :name
      t.string :description
      t.references :industry, foreign_key: true

      t.timestamps
    end
  end
end
