class Name < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :user, :string
    add_column :restaurants, :description, :string
    add_column :restaurants, :menu, :string
    add_column :restaurants, :rating, :float
    add_column :restaurants, :peanut, :boolean
    add_column :restaurants, :gluten, :boolean
    add_column :restaurants, :dairy, :boolean
    add_column :restaurants, :egg, :boolean
    add_column :restaurants, :soy, :boolean
    add_column :restaurants, :shellfish, :boolean
  end
end
