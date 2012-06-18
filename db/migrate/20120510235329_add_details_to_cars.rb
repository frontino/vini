class AddDetailsToCars < ActiveRecord::Migration
  def change
    add_column :cars, :brand, :string
    add_column :cars, :model, :string

  end
end
