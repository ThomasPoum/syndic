class Property < ApplicationRecord

  belongs_to :user
  belongs_to :condo

  validates :address, presence: true
end
