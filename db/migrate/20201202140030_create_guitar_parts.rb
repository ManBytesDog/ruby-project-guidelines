class CreateGuitarParts < ActiveRecord::Migration[6.0]
  def change
    create_table :guitar_parts do |t| 
      t.integer :guitar_id 
      t.integer :part_id 
  end
end
