class AddDefaultvalueForRealInExpenses < ActiveRecord::Migration[6.0]
  def change
    change_column :expenses , :real , :float ,default: 0
   end
end
