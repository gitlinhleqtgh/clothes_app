class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :name_shipping
      t.string :phone_shipping
      t.string :address_shipping
      t.integer :status
      t.decimal :amount
      t.text :messages

      t.timestamps
    end
  end
end
