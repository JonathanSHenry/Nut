class AddAllergiesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :peanut, :boolean, default: false
    add_column :users, :gluten, :boolean, default: false
    add_column :users, :dairy, :boolean, default: false
    add_column :users, :egg, :boolean, default: false
    add_column :users, :soy, :boolean, default: false
    add_column :users, :shellfish, :boolean, default: false
  end
end
