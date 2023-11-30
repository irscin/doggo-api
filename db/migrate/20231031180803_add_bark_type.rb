class AddBarkType < ActiveRecord::Migration[7.1]
  def change
    add_column :dog_brands, :bark_type, :string
  end
end
