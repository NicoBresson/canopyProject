class CreateMarketAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :market_areas do |t|
      t.references :company, foreign_key: true
      t.references :geography, foreign_key: true

      t.timestamps
    end
  end
end
