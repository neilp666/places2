class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :place_id
      t.integer :user_id
      t.text :content

      t.timestamps
    end
  end
end
