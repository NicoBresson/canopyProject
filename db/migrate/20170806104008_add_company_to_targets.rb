class AddCompanyToTargets < ActiveRecord::Migration[5.0]
  def change
    add_reference :targets, :company, foreign_key: true, index: true
  end
end
