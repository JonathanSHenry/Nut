class AddAllergiesToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :peanut, :boolean
    add_column :restaurants, :gluten, :boolean
    add_column :restaurants, :dairy, :boolean
    add_column :restaurants, :egg, :boolean
    add_column :restaurants, :soy, :boolean
    add_column :restaurants, :shellfish, :boolean
  end
end
