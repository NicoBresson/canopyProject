class CreateTargets < ActiveRecord::Migration[5.0]
  def change
    create_table :targets do |t|
      t.string :target_name
      t.date :acquisition_date
      t.integer :transaction_value

      t.timestamps
    end
  end
end
