class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :description
      t.text :menu
      t.string :allergies_accommodated
      t.float :rating
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :restaurants, [:user_id, :created_at]
  end
end
