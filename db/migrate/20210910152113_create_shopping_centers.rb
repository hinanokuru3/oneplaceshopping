class CreateShoppingCenters < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_centers do |t|
      t.string :name
      t.string :address
      t.string :parking_area

      t.timestamps
    end
  end
end
