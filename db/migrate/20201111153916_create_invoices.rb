class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :date_invoice
      t.string :company
      t.text :description
      t.float :amount
      t.boolean :paid
      t.references :expense, null: false, foreign_key: true

      t.timestamps
    end
  end
end
