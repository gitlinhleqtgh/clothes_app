class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.decimal :price
      t.string :images
      t.integer :discount
      t.integer :size
      t.text :description
      t.integer :quantity
      t.integer :status

      t.timestamps
    end
  end
end
