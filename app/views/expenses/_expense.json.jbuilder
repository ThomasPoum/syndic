json.extract! expense, :id, :nature, :company, :description, :estimated, :real, :exercice, :created_at, :updated_at
json.url expense_url(expense, format: :json)
