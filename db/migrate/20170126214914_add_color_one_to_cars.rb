class AddColorOneToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :color_one, :string
    add_column :cars, :color_two, :string
    add_column :cars, :color_three, :string
    add_column :cars, :color_four, :string
    add_column :cars, :color_five, :string
  end
end
