class AddTotalAverageRatingToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :total_average_rating, :integer, default: 0
  end
end
