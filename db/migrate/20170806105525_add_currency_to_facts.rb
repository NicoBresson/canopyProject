class AddCurrencyToFacts < ActiveRecord::Migration[5.0]
  def change
    add_reference :facts, :currency, foreign_key: true
  end
end
