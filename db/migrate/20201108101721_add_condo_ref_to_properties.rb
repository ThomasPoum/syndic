class AddCondoRefToProperties < ActiveRecord::Migration[6.0]
  def change
    add_reference :properties, :condo, foreign_key: true
  end
end
