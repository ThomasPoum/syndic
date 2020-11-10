class Expense < ApplicationRecord
  
  belongs_to :condo

  def total_expense(condo)
    Expense.group(condo)
  end 

  private

  

end
