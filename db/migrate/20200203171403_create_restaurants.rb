class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.timestamps
      t.string :name
      t.string :address
      t.string :specialty
    end
  end
end
