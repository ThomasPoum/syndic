json.extract! invoice, :id, :date_invoice, :company, :description, :amount, :paid, :expense_id, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
