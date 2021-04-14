class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.text :body
      t.integer :rating

      t.timestamps
    end
  end
end
