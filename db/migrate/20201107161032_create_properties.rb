class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.integer :floor
      t.integer :surface

      t.timestamps
    end
  end
end
