class AddAddressToShows < ActiveRecord::Migration
  def change
    add_column :shows, :address, :string
  end
end
