class AddTixToShow < ActiveRecord::Migration
  def change
          add_column :shows, :tix_url, :string
  end
end
