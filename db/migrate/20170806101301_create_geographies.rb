class CreateGeographies < ActiveRecord::Migration[5.0]
  def change
    create_table :geographies do |t|
      t.string :name
      t.string :desciption

      t.timestamps
    end
  end
end
