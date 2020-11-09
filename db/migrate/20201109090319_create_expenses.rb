class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :nature
      t.string :company
      t.text :description
      t.float :estimated
      t.float :real
      t.integer :exercice

      t.timestamps
    end
  end
end
