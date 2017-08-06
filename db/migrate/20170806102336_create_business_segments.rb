class CreateBusinessSegments < ActiveRecord::Migration[5.0]
  def change
    create_table :business_segments do |t|
      t.references :company, foreign_key: true
      t.references :sector, foreign_key: true

      t.timestamps
    end
  end
end
