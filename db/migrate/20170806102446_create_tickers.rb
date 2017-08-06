class CreateTickers < ActiveRecord::Migration[5.0]
  def change
    create_table :tickers do |t|
      t.string :value
      t.references :company, foreign_key: true
      t.references :information_platform, foreign_key: true

      t.timestamps
    end
  end
end
