class CreateParts < ActiveRecord::Migration[6.0]
  def change
    create_table :parts do | t |
      t.string :part_name 
      t.string :color 
      t.string :material
      t.text :description 
      t.integer :price 
    end
  end
end
