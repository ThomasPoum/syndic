class AddPropertyRefToCondos < ActiveRecord::Migration[6.0]
  def change
    add_reference :condos, :property, foreign_key: true
  end
end
