class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do | t |
      t.integer :user_id 
      t.string :manufacturer 
      t.string :model 
    end
  end
end
