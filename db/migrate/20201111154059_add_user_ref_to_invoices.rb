class AddUserRefToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_reference :invoices, :user, foreign_key: true
  end
end
