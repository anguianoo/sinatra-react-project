class CreateSkaters < ActiveRecord::Migration[6.1]
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :sex
      t.string :stance
      t.timestamps
    end
  end
end
