class CreateCondos < ActiveRecord::Migration[6.0]
  def change
    create_table :condos do |t|
      t.string :name

      t.timestamps
    end
    add_index :condos, :name, unique: true
  end
end
