class AddUserRefToCondos < ActiveRecord::Migration[6.0]
  def change
    add_reference :condos, :user, foreign_key: true
  end
end
