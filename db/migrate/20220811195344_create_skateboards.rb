class CreateSkateboards < ActiveRecord::Migration[6.1]
  def change
    create_table :skateboards do |t|
      t.string :brand
      t.integer :skater_id
      t.timestamps 
    end
  end
end
