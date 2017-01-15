class AddImageToCars < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :image, :string
  end
end
