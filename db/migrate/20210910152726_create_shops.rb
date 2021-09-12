class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :opening_hours
      t.string :regular_holiday
      t.string :floor
      t.string :phone_number
      t.string :category
      t.string :payment_method
      t.references :shopping_center, foreign_key: true

      t.timestamps
    end
  end
end
