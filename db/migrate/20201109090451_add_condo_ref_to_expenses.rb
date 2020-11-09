class AddCondoRefToExpenses < ActiveRecord::Migration[6.0]
  def change
    add_reference :expenses, :condo, foreign_key: true
  end
end
