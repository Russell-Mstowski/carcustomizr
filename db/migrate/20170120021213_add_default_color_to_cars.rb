class AddDefaultColorToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :default_color, :string
  end
end
