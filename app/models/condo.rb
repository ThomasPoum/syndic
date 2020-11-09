class Condo < ApplicationRecord
  belongs_to :user

  has_many :properties, dependent: :destroy
  has_many :expenses, dependent: :destroy

end
