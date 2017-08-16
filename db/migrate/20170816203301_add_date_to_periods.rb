class AddDateToPeriods < ActiveRecord::Migration[5.0]
  def change
    add_column :periods, :date, :date
  end
end
