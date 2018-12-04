class AddAllergiesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :peanut, :boolean
    add_column :users, :gluten, :boolean
    add_column :users, :dairy, :boolean
    add_column :users, :egg, :boolean
    add_column :users, :soy, :boolean
    add_column :users, :shellfish, :boolean
  end
end
