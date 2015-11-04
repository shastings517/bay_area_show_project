class AddshowTimeToShows < ActiveRecord::Migration
  def change
      add_column :shows, :showtime, :datetime
  end
end
