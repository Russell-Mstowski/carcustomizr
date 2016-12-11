class CreateCustomizations < ActiveRecord::Migration[5.0]
  def change
    create_table :customizations do |t|
      t.string :color
      t.string :wheels
      t.string :rims
      t.integer :car_id
      t.integer :user_id

      t.timestamps
    end
  end
end
