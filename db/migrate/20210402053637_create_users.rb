class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :chatwork
      t.date :day_of_birth
      t.string :address
      t.string :image
      t.integer :role
      t.string :password_digest
      t.string :remember_digest
      t.string :reset_digest
      t.boolean :admin
      t.string :activation_digest
      t.boolean :activated, default: false
      t.datetime :activated_at

      t.timestamps
    end
  end
end
