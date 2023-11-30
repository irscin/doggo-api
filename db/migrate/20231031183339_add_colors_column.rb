class AddColorsColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :dog_brands, :colors, :string, :null => false
  end
end
