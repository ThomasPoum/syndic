class Expense < ApplicationRecord

  

  belongs_to :condo
  has_many :invoices

  scope :of_this_year, -> { where(exercice: Time.zone.now.year) }
  scope :of_next_year, -> { where(exercice: Time.zone.now.year+1) }

  private

  

end
