class CreateDogBrands < ActiveRecord::Migration[7.1]
  def change
    create_table :dog_brands do |t|
      t.string :brand
      t.integer :life_expectancy
      t.string :key_characteristics
      t.string :size

      t.timestamps
    end
  end
end
