class AddPictureColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :picture,:string
  end
end
