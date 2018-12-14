class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :menu
      t.text :description
      t.boolean :peanut
      t.boolean :gluten
      t.boolean :dairy
      t.boolean :egg
      t.boolean :soy
      t.boolean :shellfish
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :restaurants, [:user_id, :created_at]
  end
end
