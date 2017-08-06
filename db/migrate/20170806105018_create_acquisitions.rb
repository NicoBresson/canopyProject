class CreateAcquisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :acquisitions do |t|
      t.string :target_name
      t.date :acquisition_date
      t.integer :transaction_value
      t.string :transaction_currency
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
