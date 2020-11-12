class RemoveCompanyFromExpenses < ActiveRecord::Migration[6.0]
  def change
    remove_column :expenses, :company, :string
  end
end
