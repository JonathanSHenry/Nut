class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :user
      t.string :description
      t.string :menu
      t.string :allergies_accommodated
      t.float :rating

      t.timestamps
    end
  end
end
