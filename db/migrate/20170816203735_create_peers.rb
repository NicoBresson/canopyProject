class CreatePeers < ActiveRecord::Migration[5.0]
  def change
    create_table :peers do |t|
      t.time :time_stamp
      t.string :ticker_company_a
      t.string :ticker_company_a_information_platform_id
      t.string :ticker_company_b
      t.string :ticker_company_b_information_platform_id
      t.date :date

      t.timestamps
    end
  end
end
