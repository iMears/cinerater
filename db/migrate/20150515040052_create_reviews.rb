class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :email
      t.integer :rating
      t.text :comment
      t.string :movie_title

      t.timestamps null: false
    end
  end
end
