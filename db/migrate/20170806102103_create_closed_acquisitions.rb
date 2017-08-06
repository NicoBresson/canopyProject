class CreateClosedAcquisitions < ActiveRecord::Migration[5.0]
  def change
    create_table :closed_acquisitions do |t|
      t.references :company, foreign_key: true
      t.references :target, foreign_key: true

      t.timestamps
    end
  end
end
