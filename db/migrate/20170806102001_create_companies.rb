class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :country
      t.date :incorporation_date

      t.timestamps
    end
  end
end
