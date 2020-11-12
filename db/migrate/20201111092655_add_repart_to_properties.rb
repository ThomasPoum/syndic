class AddRepartToProperties < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :repart, :integer
  end
end
