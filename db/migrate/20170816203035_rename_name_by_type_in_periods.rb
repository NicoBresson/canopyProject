class RenameNameByTypeInPeriods < ActiveRecord::Migration[5.0]
  def change
    rename_column :periods, :name, :type
  end
end
