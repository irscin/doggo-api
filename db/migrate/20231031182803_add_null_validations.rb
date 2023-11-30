class AddNullValidations < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:dog_brands, :brand, false)
    change_column_null(:dog_brands, :life_expectancy, false)
    change_column_null(:dog_brands, :key_characteristics, false)
    change_column_null(:dog_brands, :size, false)
    change_column_null(:dog_brands, :bark_type, false)
  end
end
