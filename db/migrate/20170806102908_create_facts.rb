class CreateFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :facts do |t|
      t.string :value
      t.time :time_stamp
      t.references :company, foreign_key: true
      t.references :indicator, foreign_key: true
      t.references :period, foreign_key: true
      t.references :source, foreign_key: true

      t.timestamps
    end
  end
end
